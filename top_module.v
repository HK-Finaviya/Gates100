module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor
);

reg temp_out_and;
reg temp_out_or;
reg temp_out_xor;
assign out_and = temp_out_and; 
assign out_or = temp_out_or;
assign out_xor = temp_out_xor;
integer i;

always 
begin
	temp_out_and = in[0];
	temp_out_or = in[0];
	temp_out_xor = in[0];
    for(i=1;i<100;i=i+1)
	begin	
	temp_out_and = temp_out_and & in[i];
	temp_out_or = temp_out_or | in[i];
	temp_out_xor = temp_out_xor ^ in[i];
	end
end
endmodule
