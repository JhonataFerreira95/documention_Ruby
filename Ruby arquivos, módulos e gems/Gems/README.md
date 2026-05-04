# O que é um Gerenciador de Dependências?

> Um gerenciador de dependências atua como uma coleção de ferramentas que **automatiza o processo de instalação** de bibliotecas externas. O Ruby já vem com alguns módulos nativos, porém também temos módulos externos feitos pela comunidade que podem ser instalados de forma externa — como as gems `faker`, `roo`, `byebug`, entre outras.

> O `gem` já vem instalado na distribuição Ruby por padrão. Para procurar gems disponíveis, utilizamos o site oficial [`RubyGems.org`](https://rubygems.org).

---

## Gems

### Instalando uma gem via terminal

> Utilizei o `faker` como exemplo, mas podemos substituir pelo nome de qualquer outra gem desejada.

```bash
gem install faker
```

---

### Utilizando gems via `Gemfile`

> O `Gemfile` é o arquivo de manifesto de dependências do projeto — equivalente ao `package.json` do Node.js. É nele que declaramos quais gems o projeto precisa e em quais versões.

**Definindo a fonte das gems (repositório oficial):**

```bash
source "https://rubygems.org"
```

---

**Importando a gem `faker` com versão fixada:**

> Aqui importamos com `gem` o nome da nossa gem entre aspas `"faker"` e posteriormente a sua versão no segmento `"~> 3.2.0"`.

```bash
gem "faker", "~> 3.2.0"
```

---

**Importando a gem `roo` com versão mínima:**

> Aqui importamos com `gem` o nome da nossa gem entre aspas `"roo"`, a versão `"~> 2.10"` e uma versão mínima `">= 2.10.1"` — garantindo que seja usada pelo menos essa patch.

```bash
gem 'roo', '~> 2.10', '>= 2.10.1'
```

---

**Importando a gem `securerandom`:**

> Aqui importamos com `gem` o nome da nossa gem entre aspas `"securerandom"` e posteriormente a sua versão no segmento `"~> 0.1.0"`.

```bash
gem 'securerandom', '~> 0.1.0'
```

---

**Importando a gem `byebug` para debugging:**

> Aqui importamos a gem `byebug` — uma gem de debugging muito utilizada em projetos Ruby e Rails para inspecionar o estado do código em tempo de execução e identificar bugs.

```bash
gem 'byebug', '~> 12.0'
```

---

### Após a configuração do `Gemfile`

> O **Bundler** lê o `Gemfile`, resolve todas as dependências e instala as gems de forma isolada para o projeto. O arquivo `Gemfile.lock` gerado trava as versões exatas — garantindo que todos no time usem exatamente as mesmas versões.

> **Atenção ao diretório:** o `bundle install` deve ser executado na mesma pasta onde o `Gemfile` está localizado.

```bash
bundle install
```

---

> **Sobre o operador `~>` (pessimistic version constraint):** permite atualizações de patch, mas trava a versão minor. Por exemplo, `"~> 3.2.0"` aceita `3.2.x`, mas não `3.3.0` — evitando que atualizações com breaking changes sejam instaladas automaticamente.