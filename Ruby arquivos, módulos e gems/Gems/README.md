# O que é um Gerenciador de Dependências?

## Atual como uma coleção de ferramentas que automatiza o processo de instalção. O ruby já vem com alguns módulos nativos, porém temos também módulos externos feitos pela comunidade, podemos instalar esse módulos de formas externa, como as gems, faker entre outras.

## Gem vem instalado na distribuição ruby por padrão. Para procurar as gem utilizamos o site [`RubyGem.org`](https://rubygems.org)

## Gems.

### Para instalação da gem no terminal.

#### Utilizei o faker como exemplo de gems, mais podemos por o nome de outra gem caso queira algo diferente.

```bash

gem install `faker`

```

### Utilização da gems via `gemfile`.

#### Para utilizamos às gems, estamos importando. Isso em seu arquivo <gemfile>.

```bash

source "https://rubygems.org"

```

#### Aqui importamos com <gem> o nome da nossa gem entre aspas <"faker"> e posteriomente a sua versão nesse seguimento <"~> 2.10">.

```bash

gem "faker", "~> 3.2.0" 

```

#### Aqui importamos com <gem> o nome da nossa gem entre aspas <"roo"> e posteriomente a sua versão nesse seguimento <"~> 3.2.0">.

```bash

gem 'roo', '~> 2.10', '>= 2.10.1' 

```

#### Aqui importamos com <gem> o nome da nossa gem entre aspas <"securerandom"> e posteriomente a sua versão nesse seguimento <"~> 0.1.0">.

```bash

gem 'securerandom', '~> 0.1.0'

```

#### # Aqui importamos a <gem> a nossa gem, vou utilizar uma <gem> para debuggr chamada <"byebug"> para usa e descobrir os bug do código.

```bash
gem 'byebug', '~> 12.0'

```

### Após a configuração do arquivo `gemfile`.

#### Para funcionar utlizer esse comando no terminal `bundle install` para instalação da gem. Atente-se ao seu diretório, para o `bundle install` funcionar, tem que está no mesmo diretório da sua `gemfile`.

```bash

bundle install

```