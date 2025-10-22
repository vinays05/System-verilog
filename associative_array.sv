module sample();
  int arr[string];
	initial
		begin
          arr["vinay"]=20;
          arr["subbu"]=10;
          arr["vin"]=05;
          
          $display("array's present =%p",arr);
          arr.delete("subbu");
          $display("array's present after deleting =%p",arr);
          
          foreach(arr[name])
            $display("student=%s,marks=%0d",name,arr[name]);
       
        end
endmodule
