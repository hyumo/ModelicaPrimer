within Demo;
model TestSinCos
  Modelica.Blocks.Sources.Sine sine
    annotation (Placement(transformation(extent={{-12,30},{8,50}})));
  Modelica.Blocks.Sources.Cosine cosine
    annotation (Placement(transformation(extent={{-12,-50},{8,-30}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TestSinCos;
