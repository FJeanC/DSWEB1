# AA-1 Desenvolvimento de Software para Web I
Atividade Avaliativa 1 da disciplina DSW1  
Grupo: **João Gabriel Gonçalves, Jean Fagiani Campos, Matheus Negrisolli Rosa Seixas**
## Sistema para compra e venda de veículos
Na implementação do sistema de compra e venda de veículos foi utilizado o MySQL como SGBD.
Inicialmente deve-se executar o arquivo create.sql localizado em db/MySQL. Tal arquivo é responsável pela criação de um banco de dados chamado Sistema e também popula o banco de dados para fins de teste. 
### População do banco
No script fornecido é inserido, primeiramente, o usuario administrador (login: admin, senha: admin), capaz de realizar operações CRUD para diversas tabelas do banco. Em seguida é criado um usuário cliente (login: emailteste@teste, senha: 123) e uma loja (login: emailloja@teste, senha: 321). Também foram adicionados 3 carros a venda, somente 1 deles (Chevette) estando ligado a uma loja existente no banco de dados. Ao estar logado como uma loja, o usuário poderá inserir carros e estes estarão ligados à loja por padrão.
