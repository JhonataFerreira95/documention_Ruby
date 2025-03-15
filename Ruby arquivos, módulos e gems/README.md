# Documentação do Ruby

## Índice

1. [Arquivos](#manipulação-de-arquivos-no-ruby)
2. [Módulos]()
3. [Gems]()


---

## Introdução
No Ruby, arquivos são manipulados para leitura, escrita e atualização de dados usando classes como `File` e `IO`.

Os módulos ajudam na organização e reutilização de código, funcionando como bibliotecas. Eles podem conter métodos e constantes, permitindo a implementação de `mixins` com `include` e `extend`.

Já as gems são bibliotecas externas que ampliam as funcionalidades do Ruby. Instaladas via `gem install` nome_da_gem, podem ser usadas com require.

- **Arquivos, módulos, gems:**
  - Manipulação de arquivos.
  - Módulos úteis.
  - Introdução a gems.

---

## Manipulação de arquivos no Ruby
Aqui damos inicios a manipulação de arquivo com ruby, iremos iniciar de uma formas simples lendo arquivos com `File.open`.

### Lendo arquivos com Ruby.