

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


## The DoD TCP/IP Model

- Network Access Layer: receives upper layer packets and then transmits them into physical media, and reverses the action in the receiving end
- Internet Layer: packet format, packet transfer, routing, **IP** protocol
- Transport/Host-to-Host Layer: end-toend communication, error detection and control, error recovery, **TCP** protocol
- Application/Process Layer: File Transfer, Email, HTTP, Telnet, ....