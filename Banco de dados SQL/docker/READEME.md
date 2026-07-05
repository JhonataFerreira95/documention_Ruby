# Docker

## índice

1. [Conceitos Docker](#conceitos-docker)
2. [Como o docler funcionar]()
3. [Aplicações práticas]()
4. [Docker vs Máquina virtual]()
5. [Segunraças de containers]()

---

## Conceitos Docker

> Docker é uma plataforma aberta, cuja a função é criar, execultar e implantar aplicações em ambientes virtuais isolados. Seu objetivo é disponibilizar uma aplicação o mais rápido possível.

---

> Um container é um ambiente isolado, que fica instalado em um servidor e divide um único host. Podemos dizer que o container é o encapsulamento de todas as dependências necessárias para rodar a aplicação. Proporcionar um ambiente, que faz com que as operações e configurações nele realizadas não afetem nem são afetadas por outro container. Permite que mútilpos sistemas isoladas sejam executados dentro de um sistema operacional real. 

---

> Configurar um ambiente de densenvolvimento é uma tarefa muitas vezes demorada e complicada, pois é necessário responder algumas perguntas antes de iniciar: Qual é a versão do banco de dados? Qual é a versão das bibliotecas utilizadas? Qual é a versão do gerenciador de pacotes, etc. Muitas vezes uma mínima diferença entre essas versões pode acabar causando algum conflieto, o que vai levar mais algum tempo para ser encontrado e resolvido.

---

> Quando utilizamos o docker, fazemos essa configuração apenas uma vez dentro do container e depois replicamos para os demais membros da equipe ou para máquina de produção à medida que for necessário. Pode ser utilizado com qualquer tipo de linguagem de programação, pacotes e dependências.

---

> Ele pode ser utilizado com todos os sitemas operacionais, porém seu desempenho fica muito maior quando utilizando no `linux`, pois ele foi feito para o `linux` mas irei utilizar no `Windows` com o software `Docker desktop`. 