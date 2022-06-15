module blink(input clk, output _led);

	reg [24:0] count;

	assign _led = count[24];

	always @(posedge clk)
    begin
		count <= count + 1;
    end

endmodule
