module hotel_booking_tb;

    // Inputs
    reg [3:0] id;            
    reg ac_selection;         
    reg wifi_selection;      
    reg [2:0] days;           
    reg register;             

    // Outputs
    wire [15:0] bill;         
    wire [3:0] room1, room2;  
    wire [3:0] room3_1, room3_2;  
    wire [3:0] room4_1, room4_2; 
    wire [3:0] room5;         
    wire [1:0] ac_wifi;       /

    
    hotel_booking uut (
        .id(id),
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

    initial begin
        
        $monitor("Time: %0d | ID: %b | AC: %b | WiFi: %b | Days: %d | Register: %b | Bill: %d | Room1: %b | Room2: %b | Room3_1: %b | Room3_2: %b | Room4_1: %b | Room4_2: %b | Room5: %b | AC+WiFi: %b",
                 $time, id, ac_selection, wifi_selection, days, register, bill, room1, room2, room3_1, room3_2, room4_1, room4_2, room5, ac_wifi);

        
        id = 4'b0000;
        ac_selection = 1'b0;
        wifi_selection = 1'b0;
        days = 3'b000;
        register = 1'b0;

       
        #5 id = 4'b0001; ac_selection = 1'b0; wifi_selection = 1'b0; days = 3'd3; register = 1'b1; #5 register = 1'b0;

        
        #10 id = 4'b0010; ac_selection = 1'b1; wifi_selection = 1'b1; days = 3'd5; register = 1'b1; #5 register = 1'b0;

       
        #10 id = 4'b0011; ac_selection = 1'b1; wifi_selection = 1'b0; days = 3'd2; register = 1'b1; #5 register = 1'b0;
        #10 id = 4'b0100; ac_selection = 1'b0; wifi_selection = 1'b1; days = 3'd4; register = 1'b1; #5 register = 1'b0;

        
        #10 id = 4'b0101; ac_selection = 1'b0; wifi_selection = 1'b0; days = 3'd3; register = 1'b1; #5 register = 1'b0;
        #10 id = 4'b0110; ac_selection = 1'b1; wifi_selection = 1'b1; days = 3'd3; register = 1'b1; #5 register = 1'b0;

        
        #10 id = 4'b0111; ac_selection = 1'b0; wifi_selection = 1'b1; days = 3'd6; register = 1'b1; #5 register = 1'b0;

        
        #50 $finish;
    end

endmodule
