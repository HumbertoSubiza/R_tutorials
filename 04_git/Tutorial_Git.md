---
title: "Tutorial Git"
author: "WHSP"
date: "2018-01-22"
output:
  html_document:
        css: faded.css
        keep_md: TRUE
---

### Trabalho colaborativo e controle de versão

#### Introdução e motivação

Cada dia mais se vivencia a necessidade de realizar projetos, trabalhos ou documentos em forma colaborativa entre vários membros de uma ou mais equipes. 

O trabalho e as possíveis dores de cabeça iniciais de instalar um sistema de controle eficiente, deve compensar a futuro quando o sistema torne-se conhecido e colaboração entre colegas/máquinas vire fluente. 

O sistema e software que apresenta-se aqui de nome `Git` é usado por pesquisadores e equipes de desenvolvedores no mundo todo e pretende melhorar a eficiência do trabalho em equipe.

O conceito principal é que existe um repositório de arquivos e documentos, llamado central ou remoto, instalado em qualquer parte e que existam cópias locales de ese repositório nas máquinas de cada membro da equipe. 

O repositório pode ter qualquer tipo de arquivos sendo que não se recomenda ter arquivos excessivamente grandes ou de formato binário. Isso porque o `Git` mantém um rígido sistema de controle e atualizações e nesse tipo de arquivos o controle pode ocasionar erros. Os membros da equipe podem trabalhar nos mesmos ou diferentes arquivos, sendo que ao sincronizar os repositórios os arquivos são atualizados e sempre se tem as últimas versões de cada um. 

Uma das grandes vantagens, além da colaboração é a possibilidade de recuperar a informação de qualquer um dos repositórios, inclusive o central, a partir de um repositório qualquer que esteja atualizado. 

Como outras vantagens adicionais está possibilidade de ver as modificações feitas em cada arquivo ao longo do tempo, com identificação do membro que modificou e acesso a todas as mensagens de modificações, assim como colocar nomes específicos a determinadas versões de uma documento (por exemplo "v1.0" ou "t0.4") para uma rápida identificação na evolução do documento. 

Também é possível criar "galhos" (branches) de um documento ou arquivo, em que alguém da equipe é indicado para trabalhar numa parte específica que será depois incorporada no documento principal.

`Git` como ferramenta de trabalho colaborativo é de fonte e distribuição livre e está disponível no IBGE através da Central de Software, para continuar o tutorial, proceda a sua instalação e configuração.

Uma vez  `Git` instalado, tres pequenos programas vão ficar disponíveis:

  1- Git bash ... corre scripts bash em linha de comando, não vamos usar por enquanto;
  
  2- Git cmd ... é a linha de comando e onde podemos digitar comandos básicos que veremos na frente; e
  
  3- Git Gui ... interface gráfica que podemos usar para empacotar e enviar nossas atualizações e documentos a partir da cópia local do repositório.

O trabalho com Git é simples uma vez tenha seu repositório local instalado (que veremos na sequência). Criamos arquivos, modificamos arquivos existentes e uma vez terminado, colocamos todos os arquivos que desejamos em uma caixa de envio, adicionamos uma mensagem de envio e enviamos todo para o repositório central ou remoto. 

Os arquivos podem ser adicionados na caixa de envio ou empacotamento um a um, ou todos de uma vez no final do trabalho diário. 

**É recomendado é fazer frequentes envios parciais e atualizar o nosso repositório com possíveis mudanças que tenham sido feitas no remoto.**

A sequência de comandos e ações que devem ser feitas é:

  - `git pull` atualiza nosso repositório com o remoto (sempre fazer primeiro)

  - `git add nome_arquivo.txt` ou `git add --all` para adicionar todos os modificados
  
  - `git commit -m "Mensagem explicativo das mudanças (curto)"`
  
  - `git push` envia o pacote de modificações para o repositório central
  
  - `git pull` atualiza nosso repositório com o remoto (sempre fazer por último)
  
Lembrar que estamos num ambiente colaborativo, por isso a necessidade de sincronização do repositório (`git pull`).

##### Dica: `git help everyday` traz uma lista dos comandos mais usados e suas opções

---

#### Clonando um repositório existente

A clonagem, ou seja a criação de um repositório local, a partir de um repositório remoto existente em outro lugar (dentro da nossa máquina, fora dela ou ainda na web), pode ser rápidamente feita com o aplicativo `git gui`, o terceiro programa instalado pelo software **Git**. 

É necessário saber apenas o caminho do repositório remoto, o nome dele e o lugar na nossa máquina onde será clonado. 

Na imagem seguinte está a captura de tela da clonagem do repositório "repo_gimag". 

No primeiro campo está o endereço do repositório remoto, "//warqlucas01/CCAR-PUBLICO/GIM/repo_gimag". 

Na segunda janela o endereço local "C:Users/humberto.pina/Documents/git/repo_gimag". Note-se que o endereço deve incluir o caminho **mas não deve-se criar previamente o diretório "repo_gimag" local**, ele será criado durante a clonagem.

---

![rstudio clonando](D:/Users/humberto.pina/Documents/repo_gimag/Clonar remoto.PNG)

---

O mesmo procedimento com linha de comando usando `git cmd`: se posiciona no diretório no qual o novo repositório será criado, e digita-se (neste caso no diretório "git") 

`git clone //warqlucas01/CCAR-PUBLICO/GIM/repo_gimag`

uma vez efetuado, deve aparecer a mensagem "Cloning into 'repo_gimag'..." e "Done"

Criado o repositório local, podemos verificar com explorer o conteúdo, modificar ou adicionar arquivos. 

A tarefa de enviar as modificações pode ser feita em `git cmd` com os comandos já mencionados anteriormente ou usando a interface gráfica `git gui`. 

Com a interface gráfica, o procedimento deve-se iniciar dando um "Rescan" (veja botão abaixo na janela), que  mostra os arquivos modificados na janela esquerda superior e as modificações na janela superior direita.

---

![git gui](D:/Users/humberto.pina/Documents/Git/repo_gimag/git_gui.PNG)

---

A mensagem neste caso deve-se ler como: o que está entre @@ são as linhas modificadas, vai apagar as linhas 1 e 2 e adicionar as linhas 1 a 3 (veja os sinais de "-" e "+"), após apresenta as linhas e em verde a nova inserção

Se está de conformidade, clicamos no "Stage Changed" e o nome do arquivo vai para a janela esquerda abaixo, indicando que está sendo colocada na caixa de envio, digitamos uma mensagem de envio embaixo de "Commit message"

---

![git gui commit](D:/Users/humberto.pina/Documents/Git/repo_gimag/git_gui2.PNG)

---

e clicamos no botão "Commit" (as janelas ficam vazias) e logo no botão "Push". Esse botão vai abrir uma outra janela indicando de que parte as mudanças serão enviadas (no nosso caso de "master") e repositório remoto como "origin", não precisa modificar.

![git gui Push](D:/Users/humberto.pina/Documents/Git/repo_gimag/git_gui3.PNG)

---

Se teve éxito, deve aparecer a seguinte mensagem

---

![git gui sucesso](D:/Users/humberto.pina/Documents/Git/repo_gimag/git_gui4.PNG)

---

#### Git com RStudio

RStudio facilita com a sua interface gráfica as tarefas de atualizar repositórios. Isso não quer dizer que deva trabalhar com linguagem _R_, mas seu ambiente integrado vai facilitar o dia a dia do trabalho colaborativo.

Vamos supor que desejamos criar um espelho do repositório criado na etapa anterior. Isso será realizado nas seguintes etapas:

  1. Abrir RStudio, clicar em File/New Project, deve aparecer uma janela com três opções: New Directoy, Existing Directory e Version Control. Escolhemos a última, Version Control que vai abrir uma outra janela.
  
  2. Na janela que abriu, temos as opções de criar o projeto usando **Git** (a escolhida) ou **Subversion** (outro tipo, não usar).
  
  3. Ao clicar na janela Git vai abrir uma janelas com três posições a preencher:
  
    . **Repositório URL:**, neste caso colocar Y:/repo_gimag
    
  na segunda janela a medida que digitamos na anterior, deve colocar o nome do repositório "repo_gimag" . Na terceira janela escolhemos o caminho em que vai ser criado o repositório, neste caso "~" que é o diretorio "Documentos". Finalmente clicamos em `Create Project`.
  
O RStudio cria o repositório e traz os arquivos do repositório remoto.

![rstudio clone](D:/Users/humberto.pina/Documents/repo_gimag/rstudio1.png)

Os arquivos rstudio1.png, Tutorial_Git.rmd, assim como outros que vão aparecer (Tutorial_Git.md), são arquivos criados localmente, que não existem no repositório central.

Para atualizar o repositório, temos de fazer as mesmas ações já mencionadas de `pull`, `commit`, `push`. No Rstudio, temos uma aba na janela superior direita "Git".

---

![rstudio git](D:/Users/humberto.pina/Documents/repo_gimag/rstudio2.png)


Ela mostra os arquivos que foram modificados na nossa sessão de trabalho e permite selecionar quais serão empacotados para envio (veja que aparecem no botão "staged"). 

---

![rstudio janela git](D:/Users/humberto.pina/Documents/repo_gimag/rstudio4.png)

---

Clique na seta para abaixo ("pull"), vai aparecer uma janela com mensagem da ação, se tudo está atualizado e não mais arquivos para selecionar , escreva uma mensagem de envio (janela "Commit message"), clique abaixo o botão "Commit", veja o exemplo:

![rstudio git commit](D:/Users/humberto.pina/Documents/repo_gimag/rstudio5.png)

Clicando no botão "Commit" deve aparecer uma janela informando os arquivos empacotados para envio

---

![rstudio commit](D:/Users/humberto.pina/Documents/repo_gimag/rstudio6.png)

---

E finalmente clicando na seta para cima (enviando! ou "push") fazemos a atualização do repositório remoto. Trabalho concluído!!


Uma observação importante, o arquivo **.gitignore** automáticamente criado, é um arquivo texto que indica que diretórios, pastas, arquivos ou extensões ignorar quando enviamos as atualizações ao repositório remotos (commit + push).

---

---

#### Criando um repositório para trabalho compartilhado

Para a criação de uma repositório compartilhado, vamos apresentar o exemplo de um repositório criado no servidor `warqlucas01` a partir de uma máquina local na GIMAG.

O repositório foi criado no endereço **warqlucas01/CCAR/-/PUBLICO/GIM**, que estava mapeado na máquina local como **Y:**, mas pode ser usado o caminho completo do endereço. O procedimento é o seguinte:

  1. abrindo uma janela de comandos no windows ou usando `Git cmd`, navegamos até o diretório onde queremos instalar nosso repositório local, por ejemplo, <D:/Users/humberto.pina/Documents/tecnico>
  
  digitou-se `git init --bare Y:/repo_gimag`.  Com isto foi criado um repositório chamado repo_gimag na unidade mapeada. Observe a necessiade do argumento `--bare` com efeito de compartilhar o repositório e criar novos repositórios dentro dele. Deve aparecer a mensagem:
  
  **Initialized empty Git repository in Y:/repo_gimag/**
  
  2. na máquina local e na janela de comandos, digitou-se 
  
  `git clone Y:/repo_gimag`, 
  
  com isto criamos um espelho do repositório remoto na máquina local. A mensagem que deve aparecer alerta sobre o repositório estar vazio:
  
  `warning: You appear to have cloned an empty repository.`
  
  `done.`
  
  Assim criamos no diretorio local ("/tecnico") uma nova pasta e repositório do mesmo nome do repositório remoto ("/repo_gimag"). Navegamos até ela na janela de comandos.
  
  3. apenas para comprovar que tudo funciona corretamente no novo repositório criado, inserimos um pequeno texto e arquivo da seguinte forma:
  
  `echo "teste de conteudo para tutorial git" >> CommitTeste.txt`
  
  Comprovamos com o comando `dir` que ele foi efetivamente criado.
  
  4. na sequência se adiciona o novo arquivo disponível na máquina local, para a caixa de atualizações do Git. Isto se faz com o argumento `add`:
  
  `git add CommitTeste.txt`
  
  5. as alterações ao repositório contidas na nossa caixa de atualizações (por enquanto apenas um arquivo, mas podem serem muitos mais que foram se adicionando) são "empacotadas" num envio chamado `commit`:
  
  `git commit -m "salva CommitTeste.txt no repo"`. Note a opção -m que insere uma mensagem obrigatória que esclarece o motivo da atualização. A mensagem do comando deve ser algo semelhante a:
  
  `[master (root-commit) 4351c29] salva CommitTeste.txt no repo`
 
  `1 file changed, 1 insertion(+)`
 
  `create mode 100644 CommitTeste.txt`
  
  6. finalmente é a hora das mudanças empacotadas serem enviadas para o repositório remoto, um simples
  
  `git push` realiza a tarefa.
  
  
  7. como comprobação de que tudo está atualizado, sincronizamos o repositório remoto com o local, através do comando:
  
  `git pull`, uma mensagem de **Already up-to-date.** indica que tenemos nosso repositório atualizado.
  
Pronto! estamos em condições de trabalhar.

Como procedimento normal, em um ambiente colaborativo, devemos lembrar a seguinte sequência de comandos dada no inicio e que devemos repetir até decorar:


  - `git pull` 

  - `git add nome_arquivo.txt` ou `git add --all`
  
  - `git commit -m "Mensagem explicativo das mudanças (curto)"`
  
  - `git push` 
  
  - `git pull` 

---

FIM TUTORIAL

---









