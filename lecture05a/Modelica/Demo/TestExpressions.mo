within Demo;
model TestExpressions
  Modelica.Blocks.Sources.RealExpression realExpression
    annotation (Placement(transformation(extent={{-80,50},{-60,70}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={
        Text(
          extent={{-22,70},{22,52}},
          textColor={28,108,200},
          textString="常量"),
        Text(
          extent={{-24,10},{20,-8}},
          textColor={28,108,200},
          textString="变量"),
        Text(
          extent={{-22,-50},{22,-68}},
          textColor={28,108,200},
          textString="语句")}));
end TestExpressions;
