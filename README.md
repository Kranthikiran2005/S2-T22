# Digital Room Allocation and Billing System

<!-- First Section -->
## Team Details
<details>
<summary>Detail</summary>
> Semester: 3rd Sem B. Tech. CSE

  > Section: S2

  > Team ID: T-22

  > Member-1: A Karun Suhas, 231CS210, akarunsuhas.231cs210@nitk.edu.in

  > Member-2: D Kranthi Kiran, 231CS219, dasarikranthikiran.231cs219@nitk.edu.in

  > Member-3: D Sahil Arshan, 231CS223. sahilarshandudekula.231cs223@nitk.edu.in
</details> 

<!-- Second Section -->
## Abstract
<details>
  <summary>Detail</summary>
  
  > Digital Room Allocation and Billing System <br>

1. Motivation: Digitalisation of any work reduces the manpower, increases
the efficiency and reduces the time consumption. Manual allocation of
rooms takes a lot of time, errors may occur due to confusion in vacancies
and filled rooms. For example, when there is sudden increase in demand
for the hotels in tourist areas, managing the customers manually is a
difficult task and result in customer dissatisfaction. To avoid this, we
require a digital system to spontaneously allocate a room without any
errors.<br>
2. Problem Statement:<br>
Designing and implementing a hotel room allocation system by using dig-
ital electronics. Automated bill calculation is done based on the services
chosen by the customer, and the number of days of the stay. Customer
room gets deallocated upon completion of his stay.
Special room allocation and billing is done for VIPs and Differently-abled.<br>
3. Features:<br>
• Every customer is provided with unique customer ID. Input given by
customer contains ID, the services(eg AC, wifi, . . . ) he wants and
the number of days he wants to stay.<br>
The customer is provided with the type of room he requires(differently
abled, VIP, standard, . . . ).<br>
• If there is vacancy in the type of room that customer chooses, the
room gets allocated by storing his ID in the register and the bill
is calculated by passing his required services as inputs to the bill
calculator module which consists of adders and multipliers.<br>
1
There are counters corresponding to each type of room where each
counter stores the number of rooms of the respective type which are
currently occupied.<br>
The vacancy of the room is checked by comparing the value stored
in the counter and the total number of rooms of the respective type
that customer opts by using comparator.<br>
• The bill of the customer is stored in a register corresponding to the
customer ID.<br>
The system checks room availability in real time and automatically
allocates room based on customer requirements. It displays the final
billed amount based on services opted by customers.<br>
This system uses digital logic which minimizes manual errors.<br>
 References:
Digital Design, Morris Mano<br>
https://www.siteminder.com/r/hotel-management-strategies/<br>
https://www.geeksforgeeks.org/counters-in-digital-logic/?ref=lbp<br>
https://support.resrequest.com/property-management/room-allocation/<br>
GiHub ID:
Kranthikiran2005<br>
https://github.com/Kranthikiran2005?tab=projects<br>
</details>

## Functional Block Diagram
<details>
  <summary>Detail</summary>
  
  ![DDS_miniproject_blockdiagram drawio](https://github.com/user-attachments/assets/c183ba8a-50b4-4e49-91bc-8eb3fe73f6cd)]

</details>

<!-- Third Section -->
## Working
<details>
  <summary>Detail</summary>

  > ![WhatsApp Image 2024-10-16 at 11 52 01 PM](https://github.com/user-attachments/assets/3b72cee2-4cae-4ae3-8ae8-2381f2ba6ac5)
> Truth Table for billing

| D2 | D1 | D0 | AC | WiFi | VIP | PWD | Days | Billing Amount |
|----|----|----|----|------|-----|-----|------|----------------|
| 0  | 0  | 0  | 0  | 0    | 0   | 0   | 0    | 0              |
| 0  | 0  | 0  | 0  | 1    | 0   | 0   | 0    | 0              |
| 0  | 0  | 0  | 1  | 0    | 0   | 0   | 0    | 0              |
| 0  | 0  | 0  | 1  | 1    | 0   | 0   | 0    | 0              |
| 0  | 0  | 0  | 0  | 0    | 0   | 1   | 0    | 0              |
| 0  | 0  | 0  | 0  | 1    | 0   | 1   | 0    | 0              |
| 0  | 0  | 0  | 1  | 0    | 0   | 1   | 0    | 0              |
| 0  | 0  | 0  | 1  | 1    | 0   | 1   | 0    | 0              |
| 0  | 0  | 0  | 0  | 0    | 1   | 0   | 0    | 0              |
| 0  | 0  | 0  | 0  | 1    | 1   | 0   | 0    | 0              |
| 0  | 0  | 0  | 1  | 0    | 1   | 0   | 0    | 0              |
| 0  | 0  | 0  | 1  | 1    | 1   | 0   | 0    | 0              |
| 0  | 0  | 1  | 0  | 0    | 0   | 0   | 1    | 400            |
| 0  | 0  | 1  | 0  | 1    | 0   | 0   | 1    | 500            |
| 0  | 0  | 1  | 1  | 0    | 0   | 0   | 1    | 600            |
| 0  | 0  | 1  | 1  | 1    | 0   | 0   | 1    | 700            |
| 0  | 0  | 1  | 0  | 0    | 0   | 1   | 1    | 500            |
| 0  | 0  | 1  | 0  | 1    | 0   | 1   | 1    | 600            |
| 0  | 0  | 1  | 1  | 0    | 0   | 1   | 1    | 700            |
| 0  | 0  | 1  | 1  | 1    | 0   | 1   | 1    | 800            |
| 0  | 0  | 1  | 0  | 0    | 1   | 0   | 1    | 700            |
| 0  | 0  | 1  | 0  | 1    | 1   | 0   | 1    | 800            |
| 0  | 0  | 1  | 1  | 0    | 1   | 0   | 1    | 900            |
| 0  | 0  | 1  | 1  | 1    | 1   | 0   | 1    | 1000           |
| 0  | 1  | 0  | 0  | 0    | 0   | 0   | 2    | 800            |
| 0  | 1  | 0  | 0  | 1    | 0   | 0   | 2    | 1000           |
| 0  | 1  | 0  | 1  | 0    | 0   | 0   | 2    | 1200           |
| 0  | 1  | 0  | 1  | 1    | 0   | 0   | 2    | 1400           |
| 0  | 1  | 0  | 0  | 0    | 0   | 1   | 2    | 1000           |
| 0  | 1  | 0  | 0  | 1    | 0   | 1   | 2    | 1200           |
| 0  | 1  | 0  | 1  | 0    | 0   | 1   | 2    | 1400           |
| 0  | 1  | 0  | 1  | 1    | 0   | 1   | 2    | 1600           |
| 0  | 1  | 0  | 0  | 0    | 1   | 0   | 2    | 1400           |
| 0  | 1  | 0  | 0  | 1    | 1   | 0   | 2    | 1600           |
| 0  | 1  | 0  | 1  | 0    | 1   | 0   | 2    | 1800           |
| 0  | 1  | 0  | 1  | 1    | 1   | 0   | 2    | 2000           |
| 0  | 1  | 1  | 0  | 0    | 0   | 0   | 3    | 1200           |
| 0  | 1  | 1  | 0  | 1    | 0   | 0   | 3    | 1500           |
| 0  | 1  | 1  | 1  | 0    | 0   | 0   | 3    | 1800           |
| 0  | 1  | 1  | 1  | 1    | 0   | 0   | 3    | 2100           |
| 0  | 1  | 1  | 0  | 0    | 0   | 1   | 3    | 1500           |
| 0  | 1  | 1  | 0  | 1    | 0   | 1   | 3    | 1800           |
| 0  | 1  | 1  | 1  | 0    | 0   | 1   | 3    | 2100           |
| 0  | 1  | 1  | 1  | 1    | 0   | 1   | 3    | 2400           |
| 0  | 1  | 1  | 0  | 0    | 1   | 0   | 3    | 2100           |
| 0  | 1  | 1  | 0  | 1    | 1   | 0   | 3    | 2400           |
| 0  | 1  | 1  | 1  | 0    | 1   | 0   | 3    | 2700           |
| 0  | 1  | 1  | 1  | 1    | 1   | 0   | 3    | 3000           |
| 1  | 0  | 0  | 0  | 0    | 0   | 0   | 4    | 1600           |
| 1  | 0  | 0  | 0  | 1    | 0   | 0   | 4    | 2000           |
| 1  | 0  | 0  | 1  | 0    | 0   | 0   | 4    | 2400           |
| 1  | 0  | 0  | 1  | 1    | 0   | 0   | 4    | 2800           |
| 1  | 0  | 0  | 0  | 0    | 0   | 1   | 4    | 2000           |
| 1  | 0  | 0  | 0  | 1    | 0   | 1   | 4    | 2400           |
| 1  | 0  | 0  | 1  | 0    | 0   | 1   | 4    | 2800           |
| 1  | 0  | 0  | 1  | 1    | 0   | 1   | 4    | 3200           |
| 1  | 0  | 0  | 0  | 0    | 1   | 0   | 4    | 2800           |
| 1  | 0  | 0  | 0  | 1    | 1   | 0   | 4    | 3200           |
| 1  | 0  | 0  | 1  | 0    | 1   | 0   | 4    | 3600           |
| 1  | 0  | 0  | 1  | 1    | 1   | 0   | 4    | 4000           |
| 1  | 0  | 1  | 0  | 0    | 0   | 0   | 5    | 2000           |
| 1  | 0  | 1  | 0  | 1    | 0   | 0   | 5    | 2500           |
| 1  | 0  | 1  | 1  | 0    | 0   | 0   | 5    | 3000           |
| 1  | 0  | 1  | 1  | 1    | 0   | 0   | 5    | 3500           |
| 1  | 0  | 1  | 0  | 0    | 0   | 1   | 5    | 2500           |
| 1  | 0  | 1  | 0  | 1    | 0   | 1   | 5    | 3000           |
| 1  | 0  | 1  | 1  | 0    | 0   | 1   | 5    | 3500           |
| 1  | 0  | 1  | 1  | 1    | 0   | 1   | 5    | 4000           |
| 1  | 0  | 1  | 0  | 0    | 1   | 0   | 5    | 3500           |
| 1  | 0  | 1  | 0  | 1    | 1   | 0   | 5    | 4000           |
| 1  | 0  | 1  | 1  | 0    | 1   | 0   | 5    | 4500           |
| 1  | 0  | 1  | 1  | 1    | 1   | 0   | 5    | 5000           |
| 1  | 1  | 0  | 0  | 0    | 0   | 0   | 6    | 2400           |
| 1  | 1  | 0  | 0  | 1    | 0   | 0   | 6    | 3000           |
| 1  | 1  | 0  | 1  | 0    | 0   | 0   | 6    | 3600           |
| 1  | 1  | 0  | 1  | 1    | 0   | 0   | 6    | 4200           |
| 1  | 1  | 0  | 0  | 0    | 0   | 1   | 6    | 3000           |
| 1  | 1  | 0  | 0  | 1    | 0   | 1   | 6    | 3600           |
| 1  | 1  | 0  | 1  | 0    | 0   | 1   | 6    | 4200           |
| 1  | 1  | 0  | 1  | 1    | 0   | 1   | 6    | 4800           |
| 1  | 1  | 0  | 0  | 0    | 1   | 0   | 6    | 4200           |
| 1  | 1  | 0  | 0  | 1    | 1   | 0   | 6    | 4800           |
| 1  | 1  | 0  | 1  | 0    | 1   | 0   | 6    | 5400           |
| 1  | 1  | 0  | 1  | 1    | 1   | 0   | 6    | 6000           |
| 1  | 1  | 1  | 0  | 0    | 0   | 0   | 7    | 2800           |
| 1  | 1  | 1  | 0  | 1    | 0   | 0   | 7    | 3500           |
| 1  | 1  | 1  | 1  | 0    | 0   | 0   | 7    | 4200           |
| 1  | 1  | 1  | 1  | 1    | 0   | 0   | 7    | 4900           |
| 1  | 1  | 1  | 0  | 0    | 0   | 1   | 7    | 3500           |
| 1  | 1  | 1  | 0  | 1    | 0   | 1   | 7    | 4200           |
| 1  | 1  | 1  | 1  | 0    | 0   | 1   | 7    | 4900           |
| 1  | 1  | 1  | 1  | 1    | 0   | 1   | 7    | 5600           |
| 1  | 1  | 1  | 0  | 0    | 1   | 0   | 7    | 4900           |
| 1  | 1  | 1  | 0  | 1    | 1   | 0   | 7    | 5600           |
| 1  | 1  | 1  | 1  | 0    | 1   | 0   | 7    | 6300           |
| 1  | 1  | 1  | 1  | 1    | 1   | 0   | 7    | 7000           |

</details>

<!-- Fourth Section -->
## Logisim Circuit Diagram
<details>
  <summary>Detail</summary>

  > Main Circuit
> ID generator circuit
> 4 bit binary to BCD converter
> 7 bit binary to BCD converter
> double sharing non ac room module
> double sharing ac room module
> Bill calculator module for pwd special room
> Bill calculator module for VIP room
> Bill calculator module for double sharing ac room
> Bill calculator module for double sharing non - ac room
> pwd special room module
> vip room module
</details>

<!-- Fifth Section -->
## Verilog Code
<details>
  <summary>Detail</summary>

  > Neatly update the Verilog code in code style only.
</details>

## References
<details>
  <summary>Detail</summary>
  

</details>
