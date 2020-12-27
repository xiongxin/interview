 

 # Chapter2 Application Layer

 ## 2.1 Principles of network applications

 ### Application architectures

 - Client-Server 
 - Peer-to-peer(P2P)
 - Hybrid of client-server and P2P


### Client-server architectures

- server:
  - always-on host
  - permanent IP address
  - server frams for scaling
- clients:
  - communicate with server
  - may be intermittentily connected
  - may have dynamic IP addresses
  - do not communicate directly with each other

### Pure P2P architecture

- no always-on server
- arbitrary end systems directly communicate
- peers are intermittently connected and chage IP addresses
- example: Gnutella

优点
- Highly scalable
缺点
- difficult to manage

### Hybrid of client-server and P2P

Napster
- File transfer P2P
- File serch centralized:
  - Peers register content at central server
  - Peers query same central server to locate content


### Processes communicating

Process: Program running within a host
- within same host, two processes communicate using inter-process communication.(defined by OS)
- processes in different hosts communicate by exchanging messages

Client process: process that initiates communication
Server process: process that wait to be contacted

### Sockets(插座，服务存取点)

https://cdn.nlark.com/yuque/0/2020/png/176109/1609083225025-51cdd9e7-6e62-48ba-847a-2d4e6ab0c6e9.png


- process sends/receives messages to/from its socket