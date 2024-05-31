module multiplier_4bit_tb;
  reg [3:0]a,b;
  wire [7:0]p;
  
  multiplier_4bit i1 (a,b,p);
  initial begin
    a=8'd15;b=8'd1;
    $monitor("a=%d,b=%d,product=%d",a,b,p);
    for(integer i=1;i<=15;i++)
      begin
        #2 b=i;
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
    
    
