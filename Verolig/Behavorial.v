module hotel_booking(
    input [2:0] room_selection,  // 3-bit input to select a specific room (1-6)
    input ac_selection,         
    input wifi_selection,        
    input [2:0] days,            
    input register,              // Register button to confirm booking
    output reg [15:0] bill,      
    output reg [3:0] room1,      
    output reg [3:0] room2,      
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
