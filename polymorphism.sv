// Code your testbench here
// or browse Examples   
//without using super keyword
module demo;
class vehicle ;
 // int data;
  virtual function  disp();
	//this.data=data+2;
    $display("Hey this is base class ");
  
  endfunction
endclass
  class car extends vehicle ;
  //int number;
  function disp();
    //super.disp(2);
    	//this.number=number+2;
    $display("Hey this is child class ");

  endfunction 
endclass

initial begin 
  car c_h=new();
  vehicle v_h=new();
v_h=c_h;
  v_h.disp();
  
end
endmodule
