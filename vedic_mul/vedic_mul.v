// Code for Vedic multiplier 

module vedic_mul
(output [7:0]sum,
 input [3:0]a,b);

wire [8:0]c_w;
wire [3:0]s_w;

and g1 (sum[0],a[0],b[0]);

ha h1 (.sum(sum[1]),.carry(c_w[0]),.a(a[0]&b[1]),.b(a[1]&b[0])),
   h2 (.sum(sum[6]),.carry(sum[7]),.a(a[3]&b[3]),.b(c_w[8]));

fa f1 (.sum(s_w[0]),.carry(c_w[1]),.a(a[0]&b[2]),.b(a[1]&b[1]),.c(a[2]&b[0])),
   f2 (.sum(sum[2]),.carry(c_w[2]),.a(s_w[0]),.b(c_w[1]),.c(c_w[0])),
   f3 (.sum(s_w[1]),.carry(c_w[3]),.a(a[0]&b[3]),.b(a[1]&b[2]),.c(a[2]&b[1])),
   f4 (.sum(s_w[2]),.carry(c_w[4]),.a(s_w[1]),.b(c_w[3]),.c(a[3]&b[0])),
   f5 (.sum(sum[3]),.carry(c_w[5]),.a(c_w[2]),.b(c_w[4]),.c(s_w[2])),
   f6 (.sum(s_w[3]),.carry(c_w[6]),.a(a[1]&b[3]),.b(a[2]&b[2]),.c(a[3]&b[1])),
   f7 (.sum(sum[4]),.carry(c_w[7]),.a(s_w[3]),.b(c_w[6]),.c(c_w[5])),
   f8 (.sum(sum[5]),.carry(c_w[8]),.a(c_w[7]),.b(a[2]&b[3]),.c(a[3]&b[2]));

endmodule