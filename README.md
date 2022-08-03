# Sobre

Repositório focado para turma de Laboratório de Programação II - Cesmac - 2022.2

## Links úteis
- [Ruby Installer 3.1.2](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.1.2-1/rubyinstaller-devkit-3.1.2-1-x64.exe)
- [Ruby Doc](https://ruby-doc.org/)
- 2Devs Podcast:
  - [SimpleCast](https://2devs.simplecast.com/)
  - [Spotify](https://open.spotify.com/show/5PhTDolt2xc9gne9AAUaPL)
- [Rachid - Youtube](https://www.youtube.com/channel/UCvsfG5lPPS4ehw42HhQYPYw)
- [Jackson Pires - Curso para Iniciantes](https://youtube.com/playlist?list=PLe3LRfCs4go-mkvHRMSXEOG-HDbzesyaP)

## Como serão distribuídas as notas

1. P1
  - Exercícios
  - Revisões de Código - Pull Requests
  - Provas manuscritas
  - Projeto integrado com a turma
2. P2
  - Exercícios
  - Revisões de Código - Pull Requests
  - Provas manuscritas
  - Projeto integrado com a turma
3. P3
  - Prova simulando um teste de seleção para uma Empresa
  - Projeto integrado com outras disciplinas

## Git

### Baixando o projeto pela primeira vez

1. Abrir VScode -> Menu superior - Terminal -> Novo Terminal
2. Você irá baixar o projeto utilizando um comando do git. Executar no terminal:
  - `git clone https://github.com/rachidcalazans/cesmac-lp-ii-2022-2.git`
3. Menu superior VScode - Arquivo -> Abrir pasta -> selecionar a pasta que você acabou de baixar
4. Pronto, você estará com o projeto aberto no VScode

### Atualizando o projeto

1. Abrir o VScode na pasta do projeto
2. Menu superior - Terminal -> Novo Terminal
3. Comando para ir para a `branch` principal:
  - `git checkout main`
4. Comando para atualizar a `branch` principal com atualizações que estão no Github:
  - `git fetch`
  - `git pull`
5. Agora seu projeto estará atualizado com os novos códigos do Github para a branch `main`

### Criando uma nova branch para fazer os exercícios/provas etc

1. Abrir o VScode na pasta do projeto
2. Menu superior - Terminal -> Novo Terminal
3. Comando para verificar em qual `branch` você está:
  - `git branch`
  - Deverá mostrar `main`, caso contrário, execute o seguinte código para ir para a branch `main`:
    - `git checkout main`
3. Estando na branch `main`, execute o comando para criar uma nova `branch` baseado na principal, a `main`:
  - `git checkout -b rachid/exercicio01`
  - `rachid/exercicio01` é o nome da nova branch. Ela deve ser o seu primeiro nome + o exercício ou desafio ou prova que irá realizar
4. Comando para enviar essa nova branch para o Github
  - `git push -u origin rachid/exercicio01`
5. Agora você poderá trabalhar na nova branch

### Subindo o código da sua nova branch para o Github

1. Abrir o VScode na pasta do projeto
2. Menu superior - Terminal -> Novo Terminal
3. Comando para verificar o status do seu código. Deverá mostrar em vermelho tudo que não está pronto para ser enviado
  - `git status`
4. Comando para adicionar tudo que você fez para deixar pronto para ser enviado
  - `git add .`
5. Checar novamente o status para ver todo o código alterado na cor verde
  - `git status`
6. Comando para dizer que o código está pronto para ser enviado. Será feito um `commit` do código
  - `git commit -m "Messagem do que você fez"`
7. Agora seu código está pronto para ser enviado para o Github. Comando para enviar
  - `git push`

### Criando Pull Request da nova branch

1. Ir até o Github, no projeto.
2. Assim que você fez o `git push` da sua nova branch. Irá aparecer uma messagem para você no repositório com um botão verde "Criar Pull Request"
3. Clique no botão "Criar Pull Request"
4. Coloque um título do Pull Request
5. Coloque uma descrição do Pull Request
6. Clique no botão  "Criar Pull Request"
7. Pronto, agora seu Pull Request foi criado e poderá ser revisado por outros desenvolvedores
