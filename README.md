# Digital Room Allocation and Billing System

<!-- First Section -->
## Team Details
<details>
<summary>Detail</summary>
> Semester: 3rd Sem B. Tech. CSE

  > Section: S2

  > Team ID: 

  > Member-1: A Karun Suhas, 231CS210, akarunsuhas.231cs210@nitk.edu.in

  > Member-2: D Kranthi Kiran, 231CS219, dasarikranthikiran.231cs219@nitk.edu.in

  > Member-3: D Sahil Arshan, 231CS223. sahilarshandudekula.231cs223@nitk.edu.in
</details> 

<!-- Second Section -->
## Abstract
<details>
  <summary>Detail</summary>
  
  > Digital Room Allocation and Billing System
September 30, 2024
A Karun Suhas, 231CS210. akarunsuhas.231cs210@nitk.edu.in, 7013586624
D Kranthi Kiran, 231CS219. dasarikranthikiran.231cs219@nitk.edu.in,
9550596749
D Sahil Arshan, 231CS223. sahilarshandudekula.231cs223@nitk.edu.in,
8639390731
1 Abstract
1. Motivation: Digitalisation of any work reduces the manpower, increases
the efficiency and reduces the time consumption. Manual allocation of
rooms takes a lot of time, errors may occur due to confusion in vacancies
and filled rooms. For example, when there is sudden increase in demand
for the hotels in tourist areas, managing the customers manually is a
difficult task and result in customer dissatisfaction. To avoid this, we
require a digital system to spontaneously allocate a room without any
errors.
2. Problem Statement:
Designing and implementing a hotel room allocation system by using dig-
ital electronics. Automated bill calculation is done based on the services
chosen by the customer, and the number of days of the stay. Customer
room gets deallocated upon completion of his stay.
Special room allocation and billing is done for VIPs and Differently-abled.
3. Features:
• Every customer is provided with unique customer ID. Input given by
customer contains ID, the services(eg AC, wifi, . . . ) he wants and
the number of days he wants to stay.
The customer is provided with the type of room he requires(differently
abled, VIP, standard, . . . ).
• If there is vacancy in the type of room that customer chooses, the
room gets allocated by storing his ID in the register and the bill
is calculated by passing his required services as inputs to the bill
calculator module which consists of adders and multipliers.
1
There are counters corresponding to each type of room where each
counter stores the number of rooms of the respective type which are
currently occupied.
The vacancy of the room is checked by comparing the value stored
in the counter and the total number of rooms of the respective type
that customer opts by using comparator.
• The bill of the customer is stored in a register corresponding to the
customer ID.
The system checks room availability in real time and automatically
allocates room based on customer requirements. It displays the final
billed amount based on services opted by customers.
This system uses digital logic which minimizes manual errors.
2 References:
Digital Design, Morris Mano
https://www.siteminder.com/r/hotel-management-strategies/
https://www.geeksforgeeks.org/counters-in-digital-logic/?ref=lbp
https://support.resrequest.com/property-management/room-allocation/
3 GiHub ID:
Kranthikiran2005
https://github.com/Kranthikiran2005?tab=projects
</details>

## Functional Block Diagram
<details>
  <summary>Detail</summary>
  
  ![sample]()

</details>

<!-- Third Section -->
## Working
<details>
  <summary>Detail</summary>

  > Explain how your model works with the help of a functional table (compulsory) followed by the flowchart.
</details>

<!-- Fourth Section -->
## Logisim Circuit Diagram
<details>
  <summary>Detail</summary>

  > Update a neat logisim circuit diagram
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
