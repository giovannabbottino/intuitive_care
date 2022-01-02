# para o typing
from __future__ import annotations
# para a regex
import re
from model.paginaWeb import PaginaWeb

class Controller1:
    def __init__(self: Controller1) -> None:
        self.regex = r'[^\/]*\.pdf'
        self.tiss_recente = "Padrão TISS – Versão Novembro/2021"
        self.tiss_url = "https://www.gov.br/ans/pt-br/assuntos/prestadores/padrao-para-troca-de-informacao-de-saude-suplementar-2013-tiss"
        self.componente_organizacional = "Componente Organizacional"

    def run(self: Controller1) -> None:
        componente_organizacional_link = self.scraping(self.tiss_url, self.tiss_recente)
        arquivo_url = self.scraping(componente_organizacional_link, self.componente_organizacional)
        self.salva_conteudo(arquivo_url)

    def scraping(self: Controller1, url: str, componente: str) -> str:
        pagina = PaginaWeb(url)
        pagina.scraping()
        nova_pagina_link = pagina.get_link(componente)
        return nova_pagina_link

    def salva_conteudo(self: Controller1, arquivo_url: str) -> None:
        self.arquivo_content = PaginaWeb(arquivo_url)
        self.nome_arquivo = re.findall(self.regex,str(arquivo_url))
        with open(self.nome_arquivo[0], "wb") as f:
            f.write(self.arquivo_content.get_response())