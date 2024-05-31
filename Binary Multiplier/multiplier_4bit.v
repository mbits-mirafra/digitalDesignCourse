module half_adder(a,b,sum,cout);
  input a,b;
  output sum,cout;
  assign sum = a ^ b;
  assign cout = a & b;
endmodule

module full_adder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign {cout,sum} = a + b + cin;
endmodule

module multiplier_4bit(input [3:0]a,b,output [7:0]p);
  wire x1,x2,x3,x4,x5,x6,c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
  assign p[0] = a[0] & b[0];
  half_adder i1 (a[0] & b[1],a[1] & b[0],p[1],c0);
  full_adder i2(c0,a[2] & b[0],a[1] & b[1],x1,c1);
  half_adder i3 (x1,a[0] & b[2],p[2],c2);
  full_adder i4 (c1,a[3] & b[0],a[2] & b[1],x2,c3);
  full_adder i5 (x2,c2,a[1] & b[2],x3,c4);
  half_adder i6 (x3,a[0] & b[3],p[3],c5);
  half_adder i7 (c3,a[3] & b[1],x4,c6);
  full_adder i8 (x4,c4,a[2] & b[2],x5,c7);
  full_adder i9 (x5,c5,a[1] & b[3],p[4],c8);
  full_adder i10 (c6,c7,a[3] & b[2],x6,c9);
  full_adder i11 (x6,c8,a[2] & b[3],p[5],c10);
  full_adder i12(c9,c10,a[3] & b[3],p[6],p[7]);
endmodule
  
  
