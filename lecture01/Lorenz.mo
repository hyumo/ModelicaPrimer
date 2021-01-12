model Lorenz "Lorenz system"
  parameter Real sigma=10;
  parameter Real rho=28;
  parameter Real beta=8/3;

  parameter Real x0=1 "x初始值";
  parameter Real y0=1 "y初始值";
  parameter Real z0=1 "z初始值";

  Real x "x-coordinate 状态变量x";
  Real y "y-coordinate 状态变量y";
  Real z "z-coordinate 状态变量z";
initial equation
  //--------------------------------------------------------------------------
  // 设定初始值
  //--------------------------------------------------------------------------
  x = x0;
  y = y0;
  z = z0;
equation
  //--------------------------------------------------------------------------
  // 模型数学描述
  //--------------------------------------------------------------------------
  der(x) = sigma*(y - x);
  der(y) = x*(rho - z) - y;
  der(z) = x*y - beta*z;
  annotation (experiment(
      StopTime=20,
      Interval=0.01,
      __Dymola_Algorithm="Dassl"));
end Lorenz;
