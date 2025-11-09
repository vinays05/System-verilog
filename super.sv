// Code your testbench here
// or browse Examples   
//without using super keyword
module demo;
class base;
  int data;
  function  disp(int data);
	this.data=data+2;
    $display("Hey this is base class %d",this.data);
  
  endfunction
endclass
  class child extends base ;
  int number;
  function disp(int number);
    super.disp(2);
    	this.number=number+2;
    $display("Hey this is child class %d",this.number);

  endfunction 
endclass

initial begin 
  child c_h=new();
  c_h.disp(5);
  
end
endmodule
