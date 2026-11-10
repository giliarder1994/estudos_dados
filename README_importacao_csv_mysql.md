# Importar arquivos CSV no MySQL pelo terminal

Este guia apresenta o passo a passo para habilitar a importação de
arquivos CSV no MySQL e carregar os dados diretamente pelo terminal do
Windows, sem precisar utilizar o assistente de importação do MySQL
Workbench.

## 1. Habilitar o carregamento no MySQL Server

Primeiro, abra o CMD e entre no MySQL:

``` bash
mysql -u root -p
```

Depois de informar a senha, execute:

``` sql
SET GLOBAL local_infile = 1;
```

Para conferir se a opção foi habilitada:

``` sql
SHOW GLOBAL VARIABLES LIKE 'local_infile';
```

O resultado esperado é:

  Variable_name   Value
  --------------- -------
  local_infile    ON

Se o valor estiver como `ON`, o carregamento local está habilitado no
servidor.

## 2. Habilitar o carregamento no cliente MySQL

Se você ainda estiver dentro do MySQL, saia:

``` sql
exit;
```

No CMD do Windows, entre novamente utilizando o parâmetro
`--local-infile=1`:

``` bash
mysql --local-infile=1 -u root -p
```

Esse parâmetro permite que o cliente MySQL leia arquivos do computador e
envie os dados para o servidor.

**Importante:** esse comando deve ser executado no CMD do Windows, e não
dentro do prompt `mysql>`.

## 3. Selecionar o banco de dados

Dentro do MySQL, selecione o banco que contém a tabela de destino:

``` sql
USE seu_banco_de_dados;
```

Confira se a tabela existe:

``` sql
SHOW TABLES;
```

## 4. Preparar o caminho do arquivo CSV

Para facilitar, você pode criar uma pasta chamada `dados` diretamente no
disco `C:` e copiar o arquivo CSV para ela.

Exemplo de caminho:

``` text
C:\dados\Athletes.csv
```

O caminho completo do arquivo será informado no comando de importação.
Por isso, não é necessário abrir o CMD na pasta onde o CSV está salvo.

## 5. Importar o arquivo CSV

Execute o comando abaixo, ajustando o caminho do arquivo, o nome da
tabela e os delimitadores conforme a estrutura do seu CSV:

``` sql
LOAD DATA LOCAL INFILE 'C:/dados/Athletes.csv'
INTO TABLE tb_atleta
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
```

### Entendendo os parâmetros

-   `LOAD DATA LOCAL INFILE`: carrega um arquivo local do computador
    para o MySQL.
-   `INTO TABLE tb_atleta`: informa a tabela que receberá os dados.
-   `FIELDS TERMINATED BY ','`: indica que as colunas são separadas por
    vírgula.
-   `ENCLOSED BY '"'`: indica que os valores podem estar entre aspas
    duplas.
-   `LINES TERMINATED BY '\r\n'`: indica o padrão de quebra de linha
    comum em arquivos do Windows.
-   `IGNORE 1 ROWS`: ignora a primeira linha do arquivo, normalmente
    utilizada como cabeçalho.

**Atenção aos delimitadores:** confira o CSV no Bloco de Notas ou em um
editor de texto para identificar como as colunas são separadas.

-   Se forem separadas por vírgula, utilize `FIELDS TERMINATED BY ','`.
-   Se forem separadas por ponto e vírgula, utilize
    `FIELDS TERMINATED BY ';'`.

O delimitador precisa corresponder ao formato real do arquivo. Não
utilize ponto (`.`) como separador, a menos que ele seja realmente o
caractere usado no CSV.

Se o arquivo utilizar outro padrão de quebra de linha, ajuste também o
parâmetro `LINES TERMINATED BY`.

## 6. Conferir os dados importados

Depois que o comando terminar, consulte a quantidade de registros
carregados:

``` sql
SELECT COUNT(*) FROM tb_atleta;
```

Para visualizar os dez primeiros registros:

``` sql
SELECT * FROM tb_atleta LIMIT 10;
```

## Observações importantes

-   O comando `SET GLOBAL local_infile = 1` habilita a opção no servidor
    MySQL em execução. Dependendo da configuração, essa alteração pode
    precisar ser repetida após reiniciar o servidor.
-   O parâmetro `--local-infile=1` deve ser utilizado ao iniciar o
    cliente MySQL para permitir o carregamento local naquela conexão.
-   Antes de importar, confira se a estrutura e a ordem das colunas do
    CSV correspondem às colunas da tabela. Se necessário, informe
    explicitamente a lista de colunas no comando `LOAD DATA`.
-   Faça uma cópia de segurança da tabela antes de importar novamente,
    para evitar duplicar registros em caso de uma segunda execução.
-   Para caminhos no Windows, barras normais (`/`) podem ser utilizadas
    no caminho informado ao `LOAD DATA LOCAL INFILE`.

------------------------------------------------------------------------

**Objetivo do estudo:** praticar a importação de grandes arquivos CSV
diretamente pelo terminal, utilizando o comando `LOAD DATA LOCAL INFILE`
no MySQL.
