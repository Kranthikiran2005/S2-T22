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
