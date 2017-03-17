# MAC0218 - T�cnicas de Programa��o II
##### Fabio Kon - Sala

##### Bibliografia:
*  Construindo Software como servi�o

##### Informa��es
* Sistema Online: edx.org
* Atividades:
    * Leituras -> resumo
    * Homeworks
    * Projeto
    * Presen�a -> 1/3 da Nota

---

# Aula 1 - 10/3

**What makes a great Software Engineer:**

Personal skills:

* Always improving
* Passionate
* Technically open-minded
* Data driven (Toma as decis�es baseadas em dados)

Team skills:

* Help others unterstand by tailoring explanations to them
* Creates shared success, possibly via personal compromises
* Creates "safe haven", where others can learn from mistakes
* Gives honest feedback

Technical Skills:

* Elegant solutions
* Creative thinking when faced with limitations of current solutions
* Anticipates techinal needs based on prior experience

Decision Making:

* Knows people and organization
* Updates mental models when learn new skills/facts/context
* Consider situation at multiple levels when making judgments (1)
* Can reason about complex and interwining ideas

(1): Exemplo

    Video game VR

    * Hardware
    * Suporte para VR
    * Se os desenvolvedores conhecem
    * Eficiencia

**Tecnicas**

* Conversar com o cliente, ter feedback
* Esbo�o do sistema no papel
* User stories and scenarios (mini relatorios??)
* Test-first development
* Medir a velocidade
* Implata��o

Atualmente � muito raro criar um software do zero, normalmente trabalha-se em software j� prontos. Com manuten��o ou atualiza��es -> "Legacy Code"

Al�m disso temos design patterns para tornar o software mais elegante

**SaaS - Software como Servi�o**

Servi�o que rodam na nuvem que � acessado remotamente. Exemplo, "Word" vs "Google Docs".

Para desenvolver um SaaS: m�todos �geis, computa��o em nuvem, frameworks e ferramentas de produ��o.

**Consumo de Recursos**

* Design
* Development
* Testing
* Maintenance - Gasta mais Recursos

Para um software ter uma manunten��o mais facil:      

* Documenta��o enxuta
* Coment�rio �titulo
* C�digo claro

### Capitulo 2

Web como sistema Cliente-Servidor.

Internet � o conjunto de computadores que utiliza o protocolo TCP/IP.

Em cima da Internet criou-se a Web, que era para ser um conjunto de p�ginas com hyperlink. Por�m nos anos 2000, viu-se que era posivel usar a Web como plataforma de servi�os.

Web e uma arquitetura cliente/servidor, onde o browser � o cliente e o site o servidor. � fundamentalmente orientado no sistema "request/reply"

**IP (Internet Protocol)**

O endere�o IP � identificado com 4 "octets", por exemplo: 128.32.244.172

> O endere�o especial 127.0.0.1 � "esse computador", nomeado localhost, mesmo que n�o esteja conectado com a Internet

Atualmente, na vers�o IPv4, n�o possui endere�os para todos os clientes, ent�o usa-se um IP tempor�rio para alguns IPs (exemplos s�o os celulares). Servidores tem sempre IPs fixos.

**TCP/IP (Transmission Control Protocol/Internet Protocol)**

> Comando _host_ mostra o IP do servidor

> Comando _traceroute_ mostra todos os computadores que o pacote passou

O IP: n�o tem garantia de entrega dos pacotes. Faz o melhor esfor�o mas pode perder os pacotes.

O TCP usa o IP e torna-o confiavel, detectando se houve perda de pacote, mantendo a ordem dos pacotes, transmitindo erros, etc..

O _TCP ports_ permite multiplos aplicativos TCP no mesmo computador

**Domain Name System (DNS)**

Um servidor que traduz nomes para IPs e conex�o fixa

**HTTP (Hypertext Transfer Protocol)**

Um protocolo de "request/reply" baseado no formato ASCII para a transferencia de informa��o na Web

HTTP _request_ includes:

* request method (GET, POST, etc)
* Uniform Resource Indentifier (URI)
* HTTP protocol version understood by the clientes
* headers - extra information regarding transfer request

HTTP _response_ from server:

* Protocol version and status
* Response headers
* Responde body

> HTTP status code:
2xx -> all is well, 3xx - resource removed, 4xx access problem, 5xx server error.

**Cookies**

Antigamente as p�ginas eram fixas, iguais para todo mundo. Mas queriam tornar mais din�micas, no entanto, o protocolo HTTP n�o permitia, ent�o foram criados os cookies. Que s�o informa��es do usu�rio, armazenadas no disco local.

Eles podem ser usados para v�rias coisas:

* Customiza��o
* Click tracking
* Autentica��o

Regra de ouro: n�o confiar no cliente, os cookies devem ser evidentes se houver altera��es (tamper-evident).

**3-tier shared nothing architecture**

Servidor Web - Servidor de Aplica��es (Rack)- Banco de dados

(Presentation Tier) $\quad$ $\quad$ (logic tier) $\quad$ $\quad$ $\quad$ (persistence tier)

---

# Aula 17/03

### HTML + CSS
**Linguagem de marca��o de hypertexto (HTML)**

* Document = Hierarcy of elements

    * inline (headings, tablesm lists, paragraphs)
    * embedded (images, JavaScript)
    * forms - allow user to submit simple input (text, radio/check buttons, dropdown menus ...)

* Elements delimited by ```<tag> .... <tag>```
    * Some have content: ```<p>Hello world</p>```
    * Some have attributes
    ``` <img src="http://...">
    ```
    * _id_ and _class_ atributes useful for styling

**Cascading Style Sheets (CSS)**

``` HTML
<link rel="stylesheet" href="http://..."/>
```
Coloca essa linha no elemento ```<head``` para determinar qual stylesheet (CSS) que vai com a pagina HTML

O _id_ e _class_ s�o atributos importantes no CSS

* _id_ must be unique within this page
* same _class_ can be attached to many elements

### Model-View-Controller

##### Frameworks

Estrutura b�sica de uma aplica��o, que o programador vai apenas desenvolver as "lacunas" e o aplicativo estar� pronto.

Goal: separate organization of data (model) from UI and presentation (view) by inroducing controller

* mediates user actions requesting access to Data
* presents data for rendering by the view

Web apps may seem "obviosly" MVC by design, but other alternatives are possible. Exemples: Ruby Sinatra, Front Controller (J2EE servlet), Template view (PHP)
\[
    View \leftrightarrow Controller \leftrightarrow Model
\]

_Exemplo:_ Rottentomatoes

* Filmes
    * Model: contem os dados do filme (nome, dados, atores, ano, dura��o, nota ...)
    * Controller: cria filmes, apaga Filmes
    * View: mostra as informa��es
* Moviegoers
    * M
    * C
    * V
* Reviews
    * M
    * C
    * V
* Teremos rela��es entre os dados, Moviegoers podem criar Reviews para Filmes.

### REST - Representational State Trandfer

* Idea: URI names _resource_, not _page_ or _action_
    * Self-contained: which _resource_, and what to do to it
    * Responses include hyperlinks to discover additional RESTful _resources_
    * "a post hoc (after the fact) description of the features that made the Web successful"

* A service (in the SOA sense) whose operations are like this, is a RESTful service

* Ideally, RESTful URIs name the operations

Ent�o, antes as informa��es na URI eram diretorios, agora s�o argumentos para uma opera��o CRUD.

POST - **C**reate

GET - **R**ead

PUT - **U**pdate

DELETE - **D**

_Exerc�cio:_ Design REST para uma Loja Online de Sucos

Site: sucos.com.br

Listar todos os sucos:
    * GET: sucos.com.br/sucos

Listar informa��es de um suco expec�fico:
    * GET: sucos.com.br/sucos/82

Criar um suco novo:
    * GET: sucos.com.br/sucos/new -> devolve um formul�rio em branco
    * POST: sucos.com.br/sucos

### Ruby

* Interpreted
* Object-oriented (Smalltalk-like)
    * Everything is an object
    * Every operation is a method call on some object
* Dynamically typed: objects have types, but variables don't
* Dynamic
    - add, modify code at runtime (metaprogramming)
    - ask objects about themselves (reflection)
    - in a sense all programming is metaprogramming

* ClassNames use CamelCase
    ``` Ruby
        class FriendFinder ... end
    ```
* methods and variables use snake_cas
``` Ruby
    def learn_conventions ... end
    def faculty_member? ... end
    def charge_credit_card! ... end
```
* CONSTANTS (scoped) and $GLOBALS (not scoped)
``` Ruby
    TEST_MODE = true
    $TEST_MODE = true
```
* symbols and strings
``` Ruby
    var = :symbol
    .tosym
    .tostring
```
* There are no declarations
    * local variables must be assigned before use
    * instance and class variables == nil untill assigned

> vari�vel de inst�ncia, cada objeto da classe tem uma
> vari�vel de classe compartilhada por todos objetos da classe

* Array
``` Ruby
    x = [1, "two", :three]
    #x[1] => "two"
    #x.length => 3
```

* Hash
``` Ruby
    w = {'a' => 1, :b => [2, 3]}
    #w[:b][0] => 2
    #w.keys => ['a', :b]
```
