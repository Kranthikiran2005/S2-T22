module hotel_booking(
    input [3:0] id,               /
    input ac_selection,          
    input wifi_selection,         
    input [2:0] days,             
    input register,               
    output reg [15:0] bill,       
    output reg [3:0] room1,       
    output reg [3:0] room3_1,     
    output reg [3:0] room3_2,     
    output reg [3:0] room4_1,     
    output reg [3:0] room4_2,     
    output reg [3:0] room5,       
    output reg [1:0] ac_wifi      
);

    
    reg [15:0] room_cost;

    
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
    end

    always @(posedge register) begin
        
        room_cost = 16'd0;
        ac_wifi = {ac_selection, wifi_selection};

        if (id != 4'b0000) begin
            
            if (room1 == 4'b0000) begin
                room1 = id;
                room_cost = 16'd700; 
            end else if (room2 == 4'b0000) begin
                room2 = id;
                room_cost = 16'd700;  
            end else if (room3_1 == 4'b0000) begin
                room3_1 = id;
                room_cost = 16'd400;  
            end else if (room3_2 == 4'b0000) begin
                room3_2 = id;
                room_cost = 16'd400; 
            end else if (room4_1 == 4'b0000) begin
                room4_1 = id;
                room_cost = 16'd400;  
            end else if (room4_2 == 4'b000) begin
                room4_2 = id;
                room_cost = 16'd400;  
            end else if (room5 == 4'b0000) begin
                room5 = id;
                room_cost = 16'd500;  
            end else begin
                
                $display("No available room.");
            end

            
            if (ac_selection)
                room_cost = room_cost + 16'd200;
            if (wifi_selection)
                room_cost = room_cost + 16'd100;

            
            bill = room_cost * days;
        end
    end
endmodule
