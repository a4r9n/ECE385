module lookahead_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);

	/* TODO
		*
		* Insert code here to implement a CLA adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */
		


endmodule
module la_1 ( input logic a, 
            input logic   b, 
            input logic   cin,
            output logic  s,
            output logic   co
           );

    always_comb begin
    s = a^b^cin;
    co = a&b + (a^b)&cin;
    end
endmodule

module la_4c (input logic  [3:0]   a, 
            input logic  [3:0]   b, 
            input logic          cin,
            output logic [3:0]   s,
            output logic         co
           );
           logic c1,c2,c3;
    la_1 la0(.a(a[0]),.b(b[0]),.cin(cin),.s(s[0]),.co(c1));
    la_1 la1(.a(a[1]),.b(b[1]),.cin(c1),.s(s[1]),.co(c2));
    la_1 la2(.a(a[2]),.b(b[2]),.cin(c2),.s(s[2]),.co(c3));
    la_1 la3(.a(a[3]),.b(b[3]),.cin(c3),.s(s[3]),.co(co));
endmodule

module la_4s ( input logic  [3:0]   a, 
            input logic  [3:0]   b, 
            input logic          cin,
            output logic [3:0]   s,
            output logic         co
           );
    logic [3:0] c;
    always_comb begin
    c[0] = cin;
    c[1] = a[0]&b[0] + (a[0]^b[0])&c[0];
    c[2] = a[1]&b[1] + (a[1]^b[1])&c[1];
    c[3] = a[0]&b[0] + (a[2]^b[2])&c[2];
    co = a[3]&b[3] + (a[3]^b[3])&c[3];
    s[0] = a[0]^b[0]^c[0];
    s[1] = a[1]^b[1]^c[1];
    s[2] = a[2]^b[2]^c[2];
    s[3] = a[3]^b[3]^c[3];
    end
endmodule