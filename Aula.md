# MAC0218 - Técnicas de Programação II
##### Fabio Kon - Sala

##### Bibliografia:
*  Construindo Software como serviço

##### Informações
* Sistema Online: edx.org
* Atividades:
    * Leituras -> resumo
    * Homeworks
    * Projeto
    * Presença -> 1/3 da Nota

---
# Aula 1 - 10/3

**What makes a great Software Engineer:**

Personal skills:

* Always improving
* Passionate
* Technically open-minded
* Data driven (Toma as decisões baseadas em dados)

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
* Esboço do sistema no papel
* User stories and scenarios (mini relatorios??)
* Test-first development
* Medir a velocidade
* Implatação

Atualmente é muito raro criar um software do zero, normalmente trabalha-se em software já prontos. Com manutenção ou atualizações -> "Legacy Code"

Além disso temos design patterns para tornar o software mais elegante

**SaaS - Software como Serviço**

Serviço que rodam na nuvem que é acessado remotamente. Exemplo, "Word" vs "Google Docs".

Para desenvolver um SaaS: métodos ágeis, computação em nuvem, frameworks e ferramentas de produção.

**Consumo de Recursos**

* Design
* Development
* Testing
* Maintenance - Gasta mais Recursos

Para um software ter uma manuntenção mais facil:      

* Documentação enxuta
* Comentário útitulo
* Código claro

### Capitulo 2

Web como sistema Cliente-Servidor.

Internet é o conjunto de computadores que utiliza o protocolo TCP/IP.

Em cima da Internet criou-se a Web, que era para ser um conjunto de páginas com hyperlink. Porém nos anos 2000, viu-se que era posivel usar a Web como plataforma de serviços.

Web e uma arquitetura cliente/servidor, onde o browser é o cliente e o site o servidor. É fundamentalmente orientado no sistema "request/reply"

**IP (Internet Protocol)**

O endereço IP é identificado com 4 "octets", por exemplo: 128.32.244.172

> O endereço especial 127.0.0.1 é "esse computador", nomeado localhost, mesmo que não esteja conectado com a Internet

Atualmente, na versão IPv4, não possui endereços para todos os clientes, então usa-se um IP temporário para alguns IPs (exemplos são os celulares). Servidores tem sempre IPs fixos.

**TCP/IP (Transmission Control Protocol/Internet Protocol)**

> Comando _host_ mostra o IP do servidor

> Comando _traceroute_ mostra todos os computadores que o pacote passou

O IP: não tem garantia de entrega dos pacotes. Faz o melhor esforço mas pode perder os pacotes.

O TCP usa o IP e torna-o confiavel, detectando se houve perda de pacote, mantendo a ordem dos pacotes, transmitindo erros, etc..

O _TCP ports_ permite multiplos aplicativos TCP no mesmo computador

**Domain Name System (DNS)**

Um servidor que traduz nomes para IPs e conexão fixa

**HTTP (Hypertext Transfer Protocol)**

Um protocolo de "request/reply" baseado no formato ASCII para a transferencia de informação na Web

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

Antigamente as páginas eram fixas, iguais para todo mundo. Mas queriam tornar mais dinâmicas, no entanto, o protocolo HTTP não permitia, então foram criados os cookies. Que são informações do usuário, armazenadas no disco local. 

Eles podem ser usados para várias coisas:

* Customização
* Click tracking
* Autenticação

Regra de ouro: não confiar no cliente, os cookies devem ser evidentes se houver alterações (tamper-evident).

**3-tier shared nothing architecture**

Servidor Web - Servidor de Aplicações (Rack)- Banco de dados

(Presentation Tier) $\quad$ $\quad$ (logic tier) $\quad$ $\quad$ $\quad$ (persistence tier)
