module demo;
int i,a;
initial begin
fork
		//begin
  for(int i=0;i<=2;i++)begin
              $display("The value of i 1st loop =%0d",i);
		end
		//begin
  for(int a=2;a>=0;a--)begin
            $display("The value of a 2nd loop =%0d",a);
		end
         // join
join_any
	end
endmodule
