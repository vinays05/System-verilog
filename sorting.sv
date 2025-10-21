module sort_demo;

  class A;
    rand int d[];  // Random dynamic array

    // Constraint: 10 elements, values between 1–100
    constraint c {
      d.size() == 10;
      foreach (d[i]) d[i] inside {[1:100]};
    }

    // Sorting after randomization
    function void post_randomize();
      int temp;
      $display("Before sorting: %p", d);

      // Simple bubble sort (ascending)
      for (int i = 0; i < d.size(); i++) begin
        for (int j = i + 1; j < d.size(); j++) begin
          if (d[i] > d[j]) begin
            temp = d[i];
            d[i] = d[j];
            d[j] = temp;
          end
        end
      end

      $display("After sorting : %p", d);
    endfunction
  endclass

  initial begin
    A obj = new();          // Create object
    if (!obj.randomize())   // Randomize data
      $display("Randomization failed!");
  end

endmodule
