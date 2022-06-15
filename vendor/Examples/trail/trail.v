/******************************************************************************
*                                                                             *
* Copyright 2016 myStorm Copyright and related                                *
* rights are licensed under the Solderpad Hardware License, Version 0.51      *
* (the “License”); you may not use this file except in compliance with        *
* the License. You may obtain a copy of the License at                        *
* http://solderpad.org/licenses/SHL-0.51. Unless required by applicable       *
* law or agreed to in writing, software, hardware and materials               *
* distributed under this License is distributed on an “AS IS” BASIS,          *
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or             *
* implied. See the License for the specific language governing                *
* permissions and limitations under the License.                              *
*                                                                             *
******************************************************************************/

module trail(input clk, output [3:0] led);

	assign led = _led;

	reg [22:0] count;
	reg [3:0] _led = 4'b1;

	always @(posedge clk) begin
    count <= count + 1;
    if (count[22]) begin
  	count <= 0;
  	_led <= {~_led[0], _led[3:1]};
	  end
	end

endmodule
