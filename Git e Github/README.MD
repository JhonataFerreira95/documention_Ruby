# Git e GitHub

## Índice

1. [Introdução](#introdução)
2. [Conceitos](#conceitos)
3. [Básico do Git](#básico-do-git)
4. [Boas Práticas no Git](#boas-práticas)
5. [Branches](#branches)
6. [Conflitos de Merge](#conflitos-de-merge)
7. [Repositórios Remotos](#repositórios-remotos)
8. [Trabalhando com SSH](#trabalhando-com-ssh)
9. [Trabalhando com Forks](#forks-e-como-contribuir)
10. [Usando o .gitignore](#utilizando-o-gitignore)

---

## Introdução

### O que é Git?

> `Git` é um **sistema de controle de versão distribuído** criado por `Linus Torvalds` em 2005 para gerenciar o desenvolvimento do kernel do `Linux`. Hoje é a ferramenta de controle de versão mais utilizada no mundo.

- Além de ajudar os desenvolvedores a colaborar entre si, guarda um **histórico completo de alterações** e permite reverter para versões anteriores se necessário.
- Cada desenvolvedor possui uma cópia completa do repositório — incluindo todo o histórico — em sua máquina local.

---

## Conceitos

> Antes de começar a usar o Git, é importante entender os principais conceitos que formam sua base de funcionamento.

- **Repositório:** como nos referimos ao projeto como um todo — o diretório raiz a partir de onde todas as alterações são monitoradas.

- **Commit:** é o ato de salvar uma ou mais alterações no código. Também pode se referir ao conjunto dessas alterações. Cada commit é um ponto na linha do tempo do projeto.

- **Working tree:** é o espaço de trabalho onde você faz modificações nos arquivos do seu projeto. Quando você edita, cria ou deleta arquivos, essas mudanças acontecem na `working tree`.

- **Staging:** é a área de preparação onde as alterações são separadas para serem salvas em um commit. Ela permite escolher exatamente **o que será incluído** no próximo commit — dando controle granular sobre o histórico.

- **Branches:** são ramificações que podemos criar a partir de um ponto histórico do projeto para trabalhar paralelamente, sem afetar a ramificação principal. Todo repositório precisa de pelo menos uma `branch` para servir como principal — geralmente chamada de `main` ou `master`.

---

## Básico do Git

### `git init`

> Inicializa um repositório Git em um diretório existente. Cria a pasta oculta `.git` que contém toda a estrutura de controle de versão.

```git
git init
```

---

### `git status`

> Exibe o estado atual da `working tree` e da `staging area` — quais arquivos foram modificados, quais estão prontos para commit e quais ainda estão pendentes.

```git
git status
```

> Resultado:

![Git status](../Banco%20de%20dados%20SQL/Assets/git_status.png)

> Observa-se que o arquivo foi modificado mas ainda não foi adicionado à staging area para ser salvo.

---

### `git add`

> Adiciona arquivos à `staging area`, preparando-os para o próximo commit. Use `git add nome-do-arquivo` para um arquivo específico ou `git add .` para adicionar **todas** as alterações do diretório atual.

```git
git add .
```

> Resultado:

![Git add](../Banco%20de%20dados%20SQL/Assets/git_add.png)

> Observa-se que utilizei o `git add .` para adicionar todos os arquivos modificados e, após, confirmei com `git status` que tudo foi adicionado corretamente.

---

### `git restore --staged`

> Desfaz um `git add` — remove os arquivos da `staging area` sem perder as modificações feitas. Equivalente a "desmarcar" um arquivo antes do commit.

```git
git restore --staged .
```

> Resultado:

![Git restorage](../Banco%20de%20dados%20SQL/Assets/git_restorage.png)

> Observa-se que utilizei o `git status` para checar as modificações, após utilizei o `git add .` para adicionar todos os arquivos modificados e, em seguida, o `git restore --staged .` para removê-los da staging area.

---

### `git commit`

> Registra todas as modificações que estão na `staging area` no repositório local, criando um ponto permanente no histórico do projeto. O flag `-m` permite adicionar uma mensagem descritiva diretamente no comando.

> **Importante:** o `git commit` só funciona se você adicionar as alterações com `git add` antes de usá-lo.

```git
git commit -m "adicionado alterações"
```

> Resultado:

![git commit](../Banco%20de%20dados%20SQL/Assets/git_commit.png)

> Observa-se que utilizei o `git add .` e após chequei com `git status` se as alterações foram adicionadas, finalizando com `git commit -m "adicionado alterações"`. O `-m` é referente à mensagem do commit e `develop` é a branch para onde o commit foi enviado.

---

### `git log`

> Exibe o histórico completo de commits do repositório — mostrando o hash, autor, data e mensagem de cada commit. Útil para rastrear o que foi feito e por quem.

```git
git log
```

> Resultado:

![git log](../Banco%20de%20dados%20SQL/Assets/git_log.png)

> Observa-se que utilizei o comando `git log` para verificar o histórico de `commits` do meu repositório.

---

### `git diff`

> Mostra as diferenças entre arquivos modificados e o último commit — ou entre dois commits distintos. Útil para revisar o que foi alterado antes de fazer um commit.

```git
git diff
```

> Resultado:

![git diff](../Banco%20de%20dados%20SQL/Assets/git_diff.png)

> Aqui utilizamos o `git diff` para ver as modificações que estão pendentes em determinados arquivos.

---

## Boas Práticas

> Adotar boas práticas no Git desde o início evita dores de cabeça no futuro — especialmente em times e projetos de longa duração.

### Nomear os commits com cuidado

- Mensagens de commit bem escritas e pragmáticas ajudam a entender **o que** foi alterado e **por quê**.
- Obedeça os padrões impostos pelo seu time.
- Conheça as convenções de nomenclatura de commits:

  [Conventional Commits](https://www.conventionalcommits.org/pt-br/v1.0.0/)

---

### Revise mudanças antes de commitar

- Ajuda a evitar commits de código incompleto ou com erros.
- Use o `git diff` para ver as mudanças que serão commitadas e `git status` para ver os arquivos modificados.

---

### Commits pequenos e frequentes

- São fáceis de revisar, testar e reverter se necessário.
- Tente fazer commits cada vez que você completar uma pequena funcionalidade ou correção — evite acumular muitas mudanças em um único commit gigante.

---

### Tipos de versionamento semântico

> O versionamento semântico (SemVer) define um padrão para numerar versões no formato `MAJOR.MINOR.PATCH` — ex: `2.1.4`.

- **Major (Versão principal):** indicada pela primeira parte do número. Inclui mudanças significativas, grandes novas funcionalidades ou reestruturações que **podem quebrar a compatibilidade** com versões anteriores.

- **Minor (Versão secundária):** indicada pela segunda parte do número. Adiciona funcionalidades ou melhorias novas, mas **mantém a compatibilidade** com versões anteriores.

- **Patch (Correções de bugs):** indicada pela terceira parte do número. Focada em correção de bugs e pequenas melhorias que **não afetam a compatibilidade** com versões anteriores.

---

## Branches

### O que são branches no Git?

> Branches são ramificações que permitem trabalhar em diferentes linhas de desenvolvimento dentro de um mesmo repositório, de forma **paralela e isolada**.

- Cada branch pode conter uma série de commits independentes, permitindo que desenvolvedores trabalhem em funcionalidades ou correções sem interferir na branch principal.

### Por que usar branches?

- Permitem isolar o trabalho em funcionalidades novas ou correções de bugs, facilitando o desenvolvimento paralelo.
- Ajudam a manter o histórico de desenvolvimento organizado e claro.
- Facilitam a colaboração entre desenvolvedores — cada um trabalha em sua própria branch e depois integra (`merge`) as mudanças.

### Conceitos fundamentais sobre branches

- **Branch principal:** normalmente chamada de `main` ou `master`, é a linha principal de desenvolvimento onde o código mais estável é mantido.

- **Branch de funcionalidade:** usada para desenvolver uma nova funcionalidade ou melhoria. É criada a partir da branch principal e, depois de finalizada, suas mudanças são integradas de volta à branch principal.

- **Branch de correção:** usada para corrigir bugs. Funciona de maneira similar à branch de funcionalidade, mas focada em resolver problemas específicos.

---

### Trabalhando com branches

**Criar uma nova branch:**

```git
git branch nome-da-branch
```

**Mudar para uma branch existente:**

```git
git checkout nome-da-branch
```

> Você também pode usar `git checkout -b nome-da-branch` para **criar e mudar** para a nova branch em um único comando.

**Listar todas as branches:**

```git
git branch
```

**Integrar mudanças de uma branch para outra (merge):**

```git
git merge nome-da-branch
```

> Este comando aplica as mudanças da branch especificada na branch **atual**.

**Deletar uma branch:**

```git
git branch --delete nome-da-branch
```

---

## Conflitos de Merge

### O que são conflitos de merge?

> Conflitos de merge ocorrem quando o Git **não consegue automaticamente combinar** mudanças de duas branches diferentes. Isso geralmente acontece quando há alterações conflitantes no mesmo trecho de código ou arquivo.

### Como identificar conflitos de merge?

- Quando um conflito ocorre, o Git interrompe o merge e marca os arquivos em conflito.
- Você verá mensagens de erro no terminal e os arquivos conflitantes conterão marcações especiais como `<<<<`, `====` e `>>>>`.

### Passos para resolver conflitos de merge

1. **Identifique os arquivos em conflito:**
   - Use `git status` para listar os arquivos em conflito — eles estarão marcados como `both modified`.

2. **Abra os arquivos em conflito:**
   - Edite os arquivos para combinar as mudanças de forma adequada.
   - Remova as marcações de conflito `<<<<`, `====`, `>>>>` após resolver cada conflito.

3. **Marque os conflitos como resolvidos:**
   - Após editar, adicione os arquivos resolvidos à staging area:

   ```git
   git add nome-do-arquivo
   ```

4. **Complete o merge:**
   - Faça um commit para finalizar o merge com as alterações resolvidas:

   ```git
   git commit -m "resolvido conflito de merge"
   ```

---

## Repositórios Remotos

### O que são repositórios remotos?

> São versões do seu projeto **hospedadas na internet**. Permitem que você e outros desenvolvedores trabalhem no mesmo projeto a partir de diferentes locais.

### Por que usar repositório remoto?

- Facilitam a colaboração entre desenvolvedores, permitindo que todos tenham acesso à versão mais recente do projeto.
- Servem como **backup** do seu código, garantindo que ele não seja perdido caso algo aconteça com seu repositório local.
- Possibilitam a integração contínua e outras práticas de `DevOps`.

### O que é GitHub?

> É a **plataforma de hospedagem de código-fonte** mais popular para trabalhar com repositórios remotos usando Git.

- Oferece uma interface web amigável e várias ferramentas adicionais para colaboração, como `pull requests`, `issues`, `wikis`, `kanban`, etc.

### Trabalhando com repositório remoto

**Clonar um repositório remoto para sua máquina:**

```git
git clone url-do-repositorio
```

**Enviar commits locais para o repositório remoto:**

```git
git push nome-do-remote nome-da-branch
```

**Sincronizar o repositório local com o remoto:**

```git
git pull nome-do-remote nome-da-branch
```

---

## Trabalhando com SSH

### O que é SSH?

> `SSH` (Secure Shell) é um **protocolo criptografado** utilizado para acessar, gerenciar e controlar sistemas e servidores remotamente de forma segura — no nosso caso, o repositório remoto no GitHub.

### Verificar se o SSH está ativo na sua máquina

```git
netstat -an | grep :22
```

> Após a confirmação de que o SSH está ativo, prossiga com a criação da chave.

### Criar uma nova chave SSH

> Utilize o mesmo email da sua conta do GitHub ao criar a chave.

```git
ssh-keygen -C "seu-email-entre-aspas-duplas"
```

> Após isso sua chave será criada como pode ver abaixo:

![ssh_key](../Banco%20de%20dados%20SQL/Assets/ssh.png)

> Observa-se que rasuramos alguns pontos — email, nome do arquivo, senha e a própria chave SSH. A saída do seu terminal será exatamente assim.

---

### Executar o agente SSH no seu projeto local

> Antes de adicionar o cliente SSH, é necessário rodar o agente em si com o comando:

```git
eval $(ssh-agent -s)
```

![Agente](../Banco%20de%20dados%20SQL/Assets/agentSSH.png)

### Adicionar a chave SSH ao agente

```git
ssh-add ~/caminho/da/sua/chave/privada
```

> Após o comando, você verá a mensagem solicitando a senha e, em seguida, a confirmação de que tudo foi adicionado com sucesso.

![ssh2](../Banco%20de%20dados%20SQL/Assets/ssh2.png)

---

## Forks e como contribuir

### O que são forks?

> Um `fork` é uma **cópia completa de um repositório** — você se torna o dono dessa cópia e está livre para modificá-la como quiser. É a forma padrão de contribuir com projetos `open-source`.

- Normalmente todo projeto `open-source` possui regras para contribuição. É necessário segui-las para que suas alterações sejam aceitas — geralmente documentadas em um arquivo chamado `CONTRIBUTING.md`.

### Como fazer um fork

**Passo 1:**

![fork](../Banco%20de%20dados%20SQL/Assets/fork.png)

> Clique em `fork` para clonar o repositório escolhido para a sua conta.

**Passo 2:**

![fork copy](../Banco%20de%20dados%20SQL/Assets/fork_copy.png)

> Observa-se que há a opção de copiar apenas a `branch main`. Caso desmarque essa opção, irá copiar o repositório inteiro — incluindo todas as branches.

**Passo 3:**

![forked](../Banco%20de%20dados%20SQL/Assets/fork_from.png)

> Note que aparece `forked from` — isso indica que o repositório é um fork de outro projeto. Para boas práticas, crie uma nova branch para suas alterações:

```git
git branch -M nome-da-branch-do-fork
```

> Seu fork foi criado com sucesso.

**Passo 4:**

> Agora você tem 2 caminhos a seguir: modificar o repositório para um projeto pessoal seu ou contribuir com o projeto original. Caso deseje contribuir com o projeto `open-source`, leia o `CONTRIBUTING.md` e siga as instruções.

> Após suas alterações, faça um `push` no seu repositório fork e, em seguida, crie um `pull request` para contribuir com o projeto original.

![fork pull](../Banco%20de%20dados%20SQL/Assets/fork_pull.png)

---

## Utilizando o .gitignore

### O que é o `.gitignore`?

> O `.gitignore` serve para **excluir arquivos e diretórios dos commits** — sem precisar usar `git add` seletivamente toda vez. Imagine que você tem um diretório de configurações locais, credenciais ou dependências que não devem ir para o repositório remoto. O `.gitignore` resolve isso de forma automática e permanente.

### Como utilizar o `.gitignore`?

> Basta criar um arquivo com o nome `.gitignore` na raiz do projeto e listar os diretórios ou arquivos que deseja que o Git ignore.

![gitignore](../Banco%20de%20dados%20SQL/Assets/git_ignore.png)

---

### Como manter diretórios vazios com Git?

> O Git não rastreia diretórios vazios por padrão — apenas arquivos. Para forçar o rastreamento de um diretório vazio, utilize um arquivo chamado `.gitkeep` dentro dele. Funciona da mesma forma que o `.gitignore`, mas com o propósito oposto: **garantir que o diretório seja incluído** no repositório mesmo sem conteúdo.