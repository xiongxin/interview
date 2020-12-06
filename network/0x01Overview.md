

# Introduction


## What is Computer networks?

A system consists of two of more autonomous computer/equipment
interconnected by transmission media(e.g. coaxial cable(同轴电缆), fiber,
twisted pair(双绞线), microwave).


## what is the goals of computer networks?

- Resource sharing
- High reliability
- Economic efficiency


## Classification of Computer Nteworks

- LAN (Local Area Networks)         < 10 KM
- MAN (Metropolitan Area Networks)  < 100 KM
- WAN (Wide Area Networks)          > 100 KM
- SAN (Storage Area Networks)  NAS
- PAN (Personal Area Networks) 蓝牙
- BAN (Body Area Networks) 穿戴设备

## Applications of Computer Networks

- Emails
- E-Library
- BBS
  
## Netowrk Structure: Computonents

- Terminal or Host: PC, Station
- Transmission Line: wired and wireless media(circuit, channel, trunk)
- Switching Elements: switch, router
- Subnet: responsible for connecting hosts, usually maintained by ISP


## Network Types

- Broadcast Networks:
  - every host/station can receive the messages from a certain sender, e.g., Bus and Ring
  - usually used in small LAN
  - Ethernet, Token Bus, Token Ring, FDDI
- Point-toPoint Networks:
  - only thw two established a connection can communicate each other
  - usually used in large scale MAN or WAN, e.g.,ATM networks

## Network Architecture: 

### Why Protocol Hierarchy

### Protocol Definition


### Interface

Between each pair of adjacent layers in the same Host there is an Interface


## ISO OSI Reference Model

- Application    APDU
  - File Transfer
  - Virtual
  - Remote Login
  - HTTP
- Presentation   PPDU
  - repsonsible for selection of syntax and semantics
  - Data Compression, Encoding and Decoding
  - Data Encryption and Decryption
- Session        SPDU
  - Token Management
- Transport      TPDU
  - End-to-End Sequence Control, Error Control, and Flow Control
  - Multiplexing function
  - Mapping Transport address into Network
- Network        Packet
  - Routing and Relay
  - Break upper layer data unit, TPDU, into smaller data unit, Packet
  - Congestion(拥塞) Control, Billing and Accounting
  - Subnet Control and Operation
  - Reset service
- Data Link      Frame
  - consists of two sub-layer, MAC(Medium Access Control) and LLC(Logical Link Control)
  - data link establishment and release
  - break upper layer data unit, Packet into smaller data unit, Frame
  - Sequenece Control, Flow Control
  - Error Detection, Error Control, Error Recovery
- Physical       Bit/Byte Stream
  - responsible for transmitting a series of bit or bytes streams, can use electric or optical signal to carry 0 and 1.
  - open and close a physical connection
  - transimitting a series of data bits
  - management of pyhsical layer

## The DoD TCP/IP Model

- Network Access Layer(相当于Pyhsical和Data Link): receives upper layer packets and then transmits them into physical media, and reverses the action in the receiving end
- Internet Layer(相当于Network): packet format, packet transfer, routing, **IP** protocol
- Transport/Host-to-Host Layer(相当于Transport): end-toend communication, error detection and control, error recovery, **TCP** protocol
- Application/Process Layer(相当于Application,Presentation,Session): File Transfer, Email, HTTP, Telnet, ....