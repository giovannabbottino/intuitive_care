# para o typing
from __future__ import annotations
# para a leitura
import PyPDF2 as pdf2
# para extrair
import pandas as pd
from tabula.io import read_pdf as tabula
# para a regex
import re

class LeituraPDF:
  def __init__(self: LeituraPDF, tabela: str, arquivo: str) -> None:
    self.tabela = tabela
    self.paginas = []
    self.arquivo = arquivo

  def procura_tabela(self: LeituraPDF) -> None:
    try:
      with open(self.arquivo, "rb") as f:
        pdfDoc = pdf2.PdfFileReader(f)
        for page in range(0, pdfDoc.getNumPages()):
          content = pdfDoc.getPage(page).extractText() 
          
          comeco_tabela = re.search(self.tabela, content)
          if comeco_tabela is not None:
            self.paginas.append(page + 1)

          fim_tabela = re.search('Fonte:', content)
          if fim_tabela is not None and len(self.paginas) != 0:
            self.paginas.append(page + 1)
            break
      if self.paginas[-1] - self.paginas[0] == 0:
        self.paginas.pop()
    except Exception as error:
      raise Exception("Ocorreu uma exceção: " + repr(error))

  def extrae_tabela(self: LeituraPDF, **kwargs: str) -> pd.DataFrame:
    df=pd.DataFrame([])
    if (len(self.paginas) == 1):
      df = tabula(
        self.arquivo, 
        pages=self.paginas,
        multiple_tables=True if kwargs.get('multiple_tables') else False
        )[-1]
    else: 
      for pagina in range(self.paginas[0], self.paginas[-1]):
        table = tabula(
          self.arquivo, 
          pages=pagina,
          stream='True',
          guess='False',
          pandas_options={'header': None}
          )[0]
        df = df.append(table)
    return df