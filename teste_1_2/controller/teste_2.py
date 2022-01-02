# para o typing
from __future__ import annotations
from model.leituraPDF import LeituraPDF
import pandas as pd

class Controller2:
    def __init__(self: Controller2) -> None:
        self.lista_quadros = ["Tabela de Tipo do Demandante", "Tabela de tipo de solicitação", "Tabela de categoria do Padrão TISS"]
        self.arquivo = "padrao-tiss_componente-organizacional_202111.pdf"
        '''
        Quadro 30 pagina 114         – Tabela de tipo de demandante
        Quadro 31 paginas 115 a 120  – Tabela de categoria do Padrão TISS
        Quadro 32 pagina 120         – Tabela de tipo de solicitação
        '''

    def run(self: Controller2) -> None:
        for quadro in self.lista_quadros:
            pdf = LeituraPDF(quadro, self.arquivo)
            pdf.procura_tabela()
            df = pdf.extrae_tabela(multiple_tables='True')
            if len(df.columns) > 1:
                df = df.set_axis(['Código','Descrição da categoria'], axis=1, inplace=False)
            else:
                df[['Código','Descrição da categoria']] = df.iloc[:, 0].str.split(" ",1,expand=True,)
                df = df.iloc[: , 1:]
            df = df[pd.to_numeric(df['Código'], errors='coerce').notnull()]
            df.to_csv(quadro + ".csv", index=False)