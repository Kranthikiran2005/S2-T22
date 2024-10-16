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

  > Main Circuit<br>
  







![final](https://github.com/user-attachments/assets/f228615c-9591-47ad-b191-2d66cc6f5a41)





<submodules>

> ID generator circuit<br>
![ID generator](https://github.com/user-attachments/assets/18086955-c46d-477c-9fdd-5264337161fc)
> 4 bit binary to BCD converter<br>
![4 bit binary to BCD converter](https://github.com/user-attachments/assets/e1ef6e73-5f96-4045-969f-4b232489d54b)
> 7 bit binary to BCD converter<br>
![7 bit binary to BCD converter](https://github.com/user-attachments/assets/293a0f5d-0a2f-460d-97ec-755a59360675)
> double sharing non ac room module<br>
![double sharing non ac room module](https://github.com/user-attachments/assets/1ba05940-f165-410d-bcd8-e807bc0bc09c)
> double sharing ac room module<br>
![Bill calculator module for double sharing ac room](https://github.com/user-attachments/assets/81bb6b36-3394-4df8-a532-72ee14efcf9d)
> Bill calculator module for pwd special room<br>
![Bill calculator module for pwd special room](https://github.com/user-attachments/assets/9123fbf0-4ca1-4ff5-8166-6a67f90f3716)
> Bill calculator module for VIP room<br>
![Bill calculator module for vip room](https://github.com/user-attachments/assets/2c5b0258-d44b-4a12-86bb-68210e132e57)
> Bill calculator module for double sharing ac room
> Bill calculator module for double sharing non - ac room<br>
![Bill calculator module for double sharing non ac room](https://github.com/user-attachments/assets/b0f7b274-68b5-4515-939b-1cfc6a101feb)
> pwd special room module<br>
![pwd special room module](https://github.com/user-attachments/assets/86da0a15-b049-4cf1-9d8c-99a10e55aa5b)
> vip room module
![vip room module](https://github.com/user-attachments/assets/8efc2b18-51cc-42e9-9e5f-21fd437ee474)
</submodules>
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
