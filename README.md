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
| 1  | 0  | 0  | 0  | 0    | 0   | 0   | 4    | 1600           |
| 1  | 0  | 0  | 0  | 1    | 0   | 0   | 4    | 2000           |
| 1  | 0  | 0  | 1  | 0    | 0   | 0   | 4    | 2400           |
| 1  | 0  | 0  | 1  | 1    | 0   | 0   | 4    | 2800           |
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
  <summary>Main Circuit</summary>

  > Main Circuit<br>
  







![Main circuit](https://github.com/user-attachments/assets/0c12cba8-c2a9-4925-8dbd-e881f8ac640a)
</details>



<details>
<summary>  ID generator</summary>

![ID generator](https://github.com/user-attachments/assets/18086955-c46d-477c-9fdd-5264337161fc)
</details>
<details>
<summary>  4 bit binary to BCD converter</summary>

![4 bit binary to BCD converter](https://github.com/user-attachments/assets/e1ef6e73-5f96-4045-969f-4b232489d54b)<br>
</details>
<details>
  <summary> 7 bit binary to BCD converter</summary>

![7 bit binary to BCD converter](https://github.com/user-attachments/assets/293a0f5d-0a2f-460d-97ec-755a59360675)<br>
</details>

<details>
  <summary>  Bill calculator module for pwd special room</summary>

![Bill calculator module for pwd special room](https://github.com/user-attachments/assets/9123fbf0-4ca1-4ff5-8166-6a67f90f3716)<br>
</details>
<details>
  <summary>  Bill calculator module for vip room</summary>

![Bill calculator module for vip room](https://github.com/user-attachments/assets/2c5b0258-d44b-4a12-86bb-68210e132e57) <br>
</details>
<details>
  <summary> Bill calculator module for double sharing ac room</summary>

![Bill calculator module for double sharing ac room](https://github.com/user-attachments/assets/3514a017-f1ac-4177-bcc7-b2808ba80d9c)<br>
</details>
<details>
  <summary> Bill calculator module for double sharing non - ac room</summary>

![Bill calculator module for double sharing non ac room](https://github.com/user-attachments/assets/b0f7b274-68b5-4515-939b-1cfc6a101feb)<br>
</details>
<details>
  <summary>  Pwd special room module</summary>

![pwd special room module](https://github.com/user-attachments/assets/86da0a15-b049-4cf1-9d8c-99a10e55aa5b)<br>
</details>
<details>
  <summary> vip room module</summary>

![vip room module](https://github.com/user-attachments/assets/8efc2b18-51cc-42e9-9e5f-21fd437ee474)<br>
</details>
<details>
  <summary>  Double sharing non AC room module</summary>
  
![double sharing non ac room module](https://github.com/user-attachments/assets/1ba05940-f165-410d-bcd8-e807bc0bc09c)<br>
</details>
<details>
  <summary>  Double Sharing AC room module</summary>

  ![double sharing ac room module](https://github.com/user-attachments/assets/dae385e9-ceff-4e38-8aa5-c2fa7afa877e)<br>
</details>


<!-- Fifth Section -->
## Verilog Code
<details>
  <summary>Behaviorial</summary>



  
  module hotel_booking(
    input [2:0] room_selection,  // 3-bit input to select a specific room (1-6)
    input ac_selection,         
    input wifi_selection,        
    input [2:0] days,            
    input register,              // Register button to confirm booking
    output reg [15:0] bill,      
    output reg [3:0] room1,      // Room 1 booking
    output reg [3:0] room2,      // Room 2 booking
    output reg [3:0] room3_1,    // Room 3.1 booking
    output reg [3:0] room3_2,    // Room 3.2 booking
    output reg [3:0] room4_1,    // Room 4.1 booking
    output reg [3:0] room4_2,    // Room 4.2 booking
    output reg [3:0] room5,      // Room 5 booking
    output reg [1:0] ac_wifi     // AC and Wi-Fi combined selection
);
    reg [15:0] room_cost;        // Room cost calculation
    reg [3:0] id_counter;        // ID generator (unique ID for each customer)

    initial begin
        room1 = 4'b0000;
        room2 = 4'b0000;
        room3_1 = 4'b0000;
        room3_2 = 4'b0000;
        room4_1 = 4'b0000;
        room4_2 = 4'b0000;
        room5 = 4'b0000;
        bill = 16'd0;
        ac_wifi = 2'b00;
        id_counter = 4'b0001;    // Initialize customer ID starting from 0001
    end

    always @(posedge register) begin
        room_cost = 16'd0;
        ac_wifi = {ac_selection, wifi_selection};  // Combine AC and Wi-Fi selection into 2-bit value

        // Generate unique ID for each customer in ascending order
        if (id_counter != 4'b0000) begin
            // Check which room is selected by the customer
            case (room_selection)
                3'b001: begin  // Room 1 selection
                    if (room1 == 4'b0000) begin
                        room1 = id_counter;  // Assign customer ID to room1
                        room_cost = 16'd700; // Room 1 base cost
                    end else
                        $display("Room 1 is not available.");
                end
                3'b010: begin  // Room 2 selection
                    if (room2 == 4'b0000) begin
                        room2 = id_counter;  // Assign customer ID to room2
                        room_cost = 16'd700; // Room 2 base cost
                    end else
                        $display("Room 2 is not available.");
                end
                3'b011: begin  // Room 3.1 selection
                    if (room3_1 == 4'b0000) begin
                        room3_1 = id_counter;  // Assign customer ID to room3_1
                        room_cost = 16'd400;   // Room 3.1 base cost
                    end else
                        $display("Room 3.1 is not available.");
                end
                3'b100: begin  // Room 3.2 selection
                    if (room3_2 == 4'b0000) begin
                        room3_2 = id_counter;  // Assign customer ID to room3_2
                        room_cost = 16'd400;   // Room 3.2 base cost
                    end else
                        $display("Room 3.2 is not available.");
                end
                3'b101: begin  // Room 4.1 selection
                    if (room4_1 == 4'b0000) begin
                        room4_1 = id_counter;  // Assign customer ID to room4_1
                        room_cost = 16'd400;   // Room 4.1 base cost
                    end else
                        $display("Room 4.1 is not available.");
                end
                3'b110: begin  // Room 4.2 selection
                    if (room4_2 == 4'b0000) begin
                        room4_2 = id_counter;  // Assign customer ID to room4_2
                        room_cost = 16'd400;   // Room 4.2 base cost
                    end else
                        $display("Room 4.2 is not available.");
                end
                3'b111: begin  // Room 5 selection
                    if (room5 == 4'b0000) begin
                        room5 = id_counter;    // Assign customer ID to room5
                        room_cost = 16'd500;   // Room 5 base cost
                    end else
                        $display("Room 5 is not available.");
                end
                default: begin
                    $display("Invalid room selection.");
                end
            endcase

            // Add cost for AC and Wi-Fi if selected
            if (ac_selection)
                room_cost = room_cost + 16'd200;
            if (wifi_selection)
                room_cost = room_cost + 16'd100;

            // Calculate total bill based on number of days
            bill = room_cost * days;

            // Increment ID counter for the next customer
            id_counter = id_counter + 4'b0001;
        end
    end
endmodule
</details>
<details>
  <summary>Gate Level </summary>

  module hotel_booking_gate_level (
    input [3:0] id,                  // Customer ID
    input ac_selection,              // AC selection
    input wifi_selection,            // Wi-Fi selection
    input [2:0] days,                // Number of days
    input register,                  // Register signal (button press)
    output [15:0] bill,              // Bill output
    output [3:0] room1,              // Room 1 allocation
    output [3:0] room2,              // Room 2 allocation
    output [3:0] room3_1,            // Room 3_1 allocation
    output [3:0] room3_2,            // Room 3_2 allocation
    output [3:0] room4_1,            // Room 4_1 allocation
    output [3:0] room4_2,            // Room 4_2 allocation
    output [3:0] room5               // Room 5 allocation
);

    // Room availability checks (for room1 to room5)
    wire room1_available, room2_available, room3_1_available, room3_2_available, room4_1_available, room4_2_available, room5_available;

    // Initial room costs
    wire [15:0] room_cost;
    assign room_cost = (room1_available ? 16'd700 : 
                        room2_available ? 16'd700 : 
                        room3_1_available ? 16'd400 : 
                        room3_2_available ? 16'd400 : 
                        room4_1_available ? 16'd400 : 
                        room4_2_available ? 16'd400 : 
                        room5_available ? 16'd500 : 16'd0);

    // Adder for AC and Wi-Fi costs
    wire [15:0] extras_cost;
    wire [15:0] ac_cost = ac_selection ? 16'd200 : 16'd0;
    wire [15:0] wifi_cost = wifi_selection ? 16'd100 : 16'd0;

    RippleCarryAdder_16bit adder_extras(extras_cost, ac_cost, wifi_cost);

    // Total cost (room cost + extras)
    wire [15:0] total_cost;
    RippleCarryAdder_16bit adder_total(total_cost, room_cost, extras_cost);

    // Multiply total cost by number of days
    wire [31:0] bill_full;
    Multiplier_16bit multiplier(bill_full, total_cost, days);

    // Output only the lower 16 bits of the bill
    assign bill = bill_full[15:0];

    // Room allocation (using DFFs and availability checks)
    wire [3:0] zero = 4'b0000;

    Comparator_4bit cmp1(room1_available, room1, zero);
    Room_Allocation room_alloc1(room1, id, room1_available, register);

    Comparator_4bit cmp2(room2_available, room2, zero);
    Room_Allocation room_alloc2(room2, id, room2_available, register);

    // Continue similarly for other rooms (room3_1, room3_2, room4_1, room4_2, room5)

endmodule
module DFF (
    output reg q, 
    input d, 
    input clk
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule

module Comparator_4bit (
    output equal, 
    input [3:0] a, 
    input [3:0] b
);
    wire [3:0] xnor_out;
    xnor(xnor_out[0], a[0], b[0]);
    xnor(xnor_out[1], a[1], b[1]);
    xnor(xnor_out[2], a[2], b[2]);
    xnor(xnor_out[3], a[3], b[3]);
    and(equal, xnor_out[0], xnor_out[1], xnor_out[2], xnor_out[3]);
endmodule
module Room_Allocation (
    output reg [3:0] room,   // Room ID
    input [3:0] id,          // Customer ID
    input room_available,    // Room availability
    input register           // Register signal
);
    always @(posedge register) begin
        if (room_available)
            room <= id;
    end
endmodule
module AND_Gate (
    output y, 
    input a, 
    input b
);
    assign y = a & b;
endmodule
module FullAdder (
    output sum, 
    output carry_out, 
    input a, 
    input b, 
    input carry_in
);
    wire axb, ab_and_cin;
    xor(axb, a, b);
    xor(sum, axb, carry_in);
    and(ab_and_cin, axb, carry_in);
    and(carry_out, a, b);
    or(carry_out, carry_out, ab_and_cin);
endmodule

module RippleCarryAdder_16bit (
    output [15:0] sum, 
    input [15:0] a, 
    input [15:0] b
);
    wire [15:0] carry;
    
    FullAdder fa0 (sum[0], carry[0], a[0], b[0], 1'b0);
    FullAdder fa1 (sum[1], carry[1], a[1], b[1], carry[0]);
    FullAdder fa2 (sum[2], carry[2], a[2], b[2], carry[1]);
    // Continue for all bits up to 15
    FullAdder fa15 (sum[15], carry[15], a[15], b[15], carry[14]);
endmodule
module Multiplier_16bit (
    output [31:0] product,
    input [15:0] a,
    input [2:0] b
);
    assign product = a * b;  
endmodule


</details>

<details>
  <summary>Test bench</summary>


  module hotel_booking_tb;

    reg [2:0] room_selection;  // To select the room (1-6)
    reg ac_selection;          // AC selection (1 or 0)
    reg wifi_selection;        // Wi-Fi selection (1 or 0)
    reg [2:0] days;            // Number of days to stay
    reg register;              // Register button to confirm booking
    wire [15:0] bill;          // Total bill for the stay
    wire [3:0] room1, room2, room3_1, room3_2, room4_1, room4_2, room5; // Room allocations
    wire [1:0] ac_wifi;        // AC and Wi-Fi selection status

    // Instantiate the hotel_booking module
    hotel_booking uut (
        .room_selection(room_selection),
        .ac_selection(ac_selection),
        .wifi_selection(wifi_selection),
        .days(days),
        .register(register),
        .bill(bill),
        .room1(room1),
        .room2(room2),
        .room3_1(room3_1),
        .room3_2(room3_2),
        .room4_1(room4_1),
        .room4_2(room4_2),
        .room5(room5),
        .ac_wifi(ac_wifi)
    );

    // Test sequence
    initial begin
        // Initialize
        room_selection = 3'b000;
        ac_selection = 0;
        wifi_selection = 0;
        days = 3'b000;
        register = 0;
        #5;

        // Test 1: Customer selects Room 1, AC, no Wi-Fi, stays for 3 days
        room_selection = 3'b001;  // Room 1
        ac_selection = 1;         // AC selected
        wifi_selection = 0;       // No Wi-Fi
        days = 3'd3;              // 3 days
        register = 1;             // Confirm booking
        #10;
        register = 0;             // Reset register button
        #10;

        // Display output for Test 1
        $display("Test 1: Room Selection = Room 1(VIP), AC = 1, Wi-Fi = 0, Days = 3");
        $display("Room 1: %b, Bill: %0d", room1, bill);
        $display("-----------------------------");

        // Test 2: Another customer selects Room 2, no AC, Wi-Fi, stays for 2 days
        room_selection = 3'b010;  // Room 2
        ac_selection = 0;         // No AC
        wifi_selection = 1;       // Wi-Fi selected
        days = 3'd2;              // 2 days
        register = 1;             // Confirm booking
        #10;
        register = 0;             // Reset register button
        #10;

        // Display output for Test 2
        $display("Test 2: Room Selection = Room 2(VIP), AC = 0, Wi-Fi = 1, Days = 2");
        $display("Room 2: %b, Bill: %0d", room2, bill);
        $display("-----------------------------");

        // Test 3: Customer selects Room 3.1, no AC, no Wi-Fi, stays for 1 day
        room_selection = 3'b011;  // Room 3.1
        ac_selection = 0;         // No AC
        wifi_selection = 0;       // No Wi-Fi
        days = 3'd1;              // 1 day
        register = 1;             // Confirm booking
        #10;
        register = 0;             // Reset register button
        #10;

        // Display output for Test 3
        $display("Test 3: Room Selection = Room 3.1(Double sharing non-AC room), AC = 0, Wi-Fi = 0, Days = 1");
        $display("Room 3.1: %b, Bill: %0d", room3_1, bill);
        $display("-----------------------------");

        // Test 4: 
        room_selection = 3'b101;  // Room 4.1
        ac_selection = 1;         // AC selected
        wifi_selection = 1;       // Wi-Fi selected
        days = 3'd4;              // 4 days
        register = 1;             // Confirm booking
        #10;
        register = 0;             // Reset register button
        #10;

        // Display output for Test 4
        $display("Test 4: Room Selection = Room 4.1(Double sharing AC room), AC = 1, Wi-Fi = 1, Days = 4");
        $display("Room 4: %b, Bill: %0d", room4_1, bill); 
        $display("-----------------------------");

        // Test 5: Customer selects Room 5, AC and Wi-Fi, stays for 5 days
        room_selection = 3'b111;  // Room 5
        ac_selection = 1;         // AC selected
        wifi_selection = 1;       // Wi-Fi selected
        days = 3'd5;              // 5 days
        register = 1;             // Confirm booking
        #10;
        register = 0;             // Reset register button
        #10;

        // Display output for Test 5
        $display("Test 5: Room Selection = Room 5(PWD special), AC = 1, Wi-Fi = 1, Days = 5");
        $display("Room 5: %b, Bill: %0d", room5, bill);
        $display("-----------------------------");

        // Test complete
        $finish;
    end

endmodule
  
</details>

## References
<details>
  <summary>Detail</summary>
  Digital Design, Morris Mano
https://www.siteminder.com/r/hotel-management-strategies/
https://www.geeksforgeeks.org/counters-in-digital-logic/?ref=lbp
https://support.resrequest.com/property-management/room-allocation/

</details>
