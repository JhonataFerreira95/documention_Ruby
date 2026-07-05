# Docker

## índice

1. [Conceitos Docker](#conceitos-docker)
2. [Diferenças de Docker e Máquina virtual](#diferenças-entre-docker-e-máquina-virtual)
3. [Vantagens de utilizar o Docker](#vantagens-de-utilizar-o-docker)
4. [Docker vs Máquina virtual]()
5. [Segunraças de containers]()

---

## Conceitos `Docker`

> Docker é uma plataforma aberta, cuja a função é criar, execultar e implantar aplicações em ambientes virtuais isolados. Seu objetivo é disponibilizar uma aplicação o mais rápido possível.

---

> Um container é um ambiente isolado, que fica instalado em um servidor e divide um único host. Podemos dizer que o container é o encapsulamento de todas as dependências necessárias para rodar a aplicação. Proporcionar um ambiente, que faz com que as operações e configurações nele realizadas não afetem nem são afetadas por outro container. Permite que mútilpos sistemas isoladas sejam executados dentro de um sistema operacional real. 

---

> Configurar um ambiente de densenvolvimento é uma tarefa muitas vezes demorada e complicada, pois é necessário responder algumas perguntas antes de iniciar: Qual é a versão do banco de dados? Qual é a versão das bibliotecas utilizadas? Qual é a versão do gerenciador de pacotes, etc. Muitas vezes uma mínima diferença entre essas versões pode acabar causando algum conflieto, o que vai levar mais algum tempo para ser encontrado e resolvido.

---

> Quando utilizamos o docker, fazemos essa configuração apenas uma vez dentro do container e depois replicamos para os demais membros da equipe ou para máquina de produção à medida que for necessário. Pode ser utilizado com qualquer tipo de linguagem de programação, pacotes e dependências.

---

> Ele pode ser utilizado com todos os sitemas operacionais, porém seu desempenho fica muito maior quando utilizando no `linux`, pois ele foi feito para o `linux` mas irei utilizar no `Windows` com o software `Docker desktop`. 

---

## Diferenças entre `Docker` e `Máquina virtual`

> Para criamos uma máquina virtual, precisamos instalar um sistema operacional do zero, como se estivéssemos configurando um novo computador. E para que todas elas subam, precisam passar por um processo de `boot` de inicialização. Além de ser necessário manter a rotina de atualização características do Sistema operacional.

---

> Todo esse proceso acaba sendo mais custoso, não só em termos de consumo de banda, de processamento, mas de tempo também. Tempo de configuração, de manutenção e de processamento. O container é entendido pela máquina como um processo, que fica encapsulado, de modo que seus processos interno não interfiram em outros processos também não inferfiram em seu funcionamento. Ao invés de subir vários sistemas operacionais, podemos subir apenas processos que vão simular o sistema operacionais.

---

## Vantagens de utilizar o `Docker`

> A principal vantagem é garantir que o ambiente de desnvolvimento seja idêntico ao de produção e que todos da equipe estejam trabalhando com o mesmo ambiente.Eliminando os casos de incompatibilidade entre ambientes que ocasiona aquele velho e conhecido problema: "Na minha máquina funciona", porque nesse caso, todos estão utilizando "a mesma máquina",  um ambiente idêntico.

- 