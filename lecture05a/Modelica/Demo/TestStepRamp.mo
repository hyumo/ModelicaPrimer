within Demo;
model TestStepRamp
  Modelica.Blocks.Sources.Step step
    annotation (Placement(transformation(extent={{-10,30},{10,50}})));
  Modelica.Blocks.Sources.Ramp ramp
    annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TestStepRamp;
