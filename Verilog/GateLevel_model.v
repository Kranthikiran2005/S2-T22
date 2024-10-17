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
