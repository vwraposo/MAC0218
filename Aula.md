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
