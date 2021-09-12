within ;
package Lecture04
  model Demo
    parameter Real x[3,3]=[1,2,3; 2,3,4; 3,4,5];
    Real a[10];

  equation

    if time < 5.0 then
      a = 0;
    elseif time > 50 and time < 300 then
      a = 1;
    else
      a = 0.5;
    end if;

    for i in 1:10 loop
      a[i] = i;
    end for;

    out1 = Functions.demo(in1, in2);

    (out1,out2) = Functions.demo(in2=10, in1=12);
    (out1,out2) = Functions.demo(
      in1,
      in2,
      tol=1e-4);
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end Demo;

  package Functions

    function demo "Demo function"
      input Real in1 "The first argument for demo function";
      input Real in2 "The second argument";
      input Real tol=1e-5 "Tolerance";
      output Real out1 "The first output for demo";
      output Real out2 "The second output for demo";

      /* (out1, out2) = demo(in1, in2) */
    protected
      Real p1;
    algorithm
      p1 := in1 - in2;
      out1 := in1 + in2 + p1;
      out2 := in1*in2;
    end demo;

    function add "Summation of a and b"
      input Integer a;
      input Integer b;
      output Integer sum;
    algorithm
      sum := a + b;
    end add;

    function coo
      input Real M[:,:] "Input dense matrix";
      input Real tol=1e-5 "M[i,j] < tol is considered empty. Tolerance value";

      output Integer rows[:] "Row indices";
      output Integer cols[:] "Column indices";
      output Real data[:] "Values";
      output Integer nnz;
    protected
      Integer r_temp[size(M, 1)*size(M, 2)];
      Integer c_temp[size(M, 1)*size(M, 2)];
      Real d_temp[size(M, 1)*size(M, 2)];
      Integer counter;
    algorithm
      counter := 0;
      for i in 1:size(M, 1) loop
        for j in 1:size(M, 2) loop
          if abs(M[i, j]) > tol then
            counter := counter + 1;
            r_temp[counter] := i;
            c_temp[counter] := j;
            d_temp[counter] := M[i, j];
          end if;
        end for;
      end for;

      rows := r_temp[1:counter];
      cols := c_temp[1:counter];
      data := d_temp[1:counter];
      nnz := counter;
    end coo;
  end Functions;

  package Answers
    function add "Calculates the sumation of 2 variables"
      input Real u1 "Input variable 1";
      input Real u2 "Input variable 2";
      output Real y "Sum of u1 and u2";
    algorithm
      y := u1 + u2;
    end add;

    function coo
      input Real M[:,:] "Input matrix";
      input Real tol=1e-5 "abs(M[i,j]) < tol is considered zero";
      output Integer rows[:] "row indices";
      output Integer cols[:] "column indices";
      output Real data[:] "Non-zero values";
    protected
      Integer r_temp[size(M, 1)*size(M, 2)] "Maximum rows array";
      Integer c_temp[size(M, 1)*size(M, 2)] "Maximum cols array";
      Real data_temp[size(M, 1)*size(M, 2)] "Maximum data array";
      Integer nzz;
    algorithm
      nzz := 0;
      for i in 1:size(M, 1) loop
        for j in 1:size(M, 2) loop
          if abs(M[i, j]) > tol then
            nzz := nzz + 1;
            r_temp[nzz] := i;
            c_temp[nzz] := j;
            data_temp[nzz] := M[i, j];
          end if;
        end for;
      end for;
      rows := r_temp[1:nzz];
      cols := c_temp[1:nzz];
      data := data_temp[1:nzz];
    end coo;
  end Answers;
end Lecture04;
