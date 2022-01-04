![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)

# Teste 3

## Features
- [X] Teste 3 - Banco de dados 

### Pré-requisitos 
Para usar esse programa vocês precisará de SQL.

### Rodando
```bash
# após clonar esse repositorio 
# acesse a pasta do projeto
cd intuitive_care/teste_3

# acesse o mysql
mysql -u root --local-infile=1  -p

# crie o banco e tabela com 
source fisico.sql

# popule o banco com 
# se necessario altere o caminho dos arquivos
source popula.sql

# consulte o banco com 
source consulta.sql
```