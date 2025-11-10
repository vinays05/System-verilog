module demo;
event ipkf;
  initial begin 
    $display("before triggering");
#10;
->ipkf;
    $display("after triggering");

  end
  
  initial begin 
$display("[%0t] Consumer: Waiting for event...", $time);
    @(ipkf);  
 $display("[%0t] Consumer: Event detected! Continuing...", $time);

end
endmodule
