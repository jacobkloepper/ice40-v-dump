module chip (
    // 25MHz clock input
    input  clk,
    // Led outputs
    output _led
  );

  // turn other leds off (active low)

  blink my_blink (
    .clk   (clk),
    .led (_led)
  );

endmodule
