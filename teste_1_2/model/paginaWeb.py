# para o typing
from __future__ import annotations
# para a requisicao
from bs4 import BeautifulSoup
import requests

class PaginaWeb:
  def __init__(self: PaginaWeb, url: str) -> None:
    self.url = url

  def scraping(self: PaginaWeb) -> None:
    try:
      self.response = requests.get(self.url).content
      self.soup = BeautifulSoup(self.response, 'html.parser')
    except Exception as error:
      raise Exception("Ocorreu uma exceção: " + repr(error))

  def get_response(self: PaginaWeb) -> str:
    try:
      self.response = requests.get(self.url).content
      return self.response
    except Exception as error:
      raise Exception("Ocorreu uma exceção: " + repr(error))

  def get_link(self: PaginaWeb, text: str) -> str: 
    try:
      self.parent = self.soup.find(text=text).parent
      self.link = self.parent.findNext("a", href=True)['href']
      return self.link
    except Exception as error:
      raise Exception("Ocorreu uma exceção: " + repr(error))