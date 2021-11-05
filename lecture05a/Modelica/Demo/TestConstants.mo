within Demo;
model TestConstants
  Modelica.Blocks.Sources.Constant const(k=5)
    annotation (Placement(transformation(extent={{-80,10},{-60,30}})));
  Modelica.Blocks.Sources.Constant const1(k=k)
    annotation (Placement(transformation(extent={{-80,-30},{-60,-10}})));
  parameter Real k=5 "Constant output value";
  Modelica.Blocks.Sources.Constant const2(k=time)
    annotation (Placement(transformation(extent={{-80,-70},{-60,-50}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={
        Text(
          extent={{-90,46},{-48,36}},
          textColor={28,108,200},
          textString="常量"),
        Text(
          extent={{-90,4},{-48,-6}},
          textColor={28,108,200},
          textString="参数"),
        Text(
          extent={{-90,-36},{-48,-46}},
          textColor={28,108,200},
          textString="不能放变量")}));
end TestConstants;
