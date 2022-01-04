# Teste 1 e 2

## Features
- [X] Teste 3 - Banco de dados 

### Pré-requisitos 
Para usar esse programa vocês precisará de Python3.

### Rodando
```bash
# após clonar esse repositorio 
# acesse a pasta do projeto
cd intuitive_care/teste_3

# crie o banco e tabela com 
mysql -h hostname -u user < fisico.sql

# popule o banco com 
# se necessario altere o caminho dos arquivos
mysql -h hostname -u user < popula.sql

# consulte o banco com 
mysql -h hostname -u user < consulta.sql
```