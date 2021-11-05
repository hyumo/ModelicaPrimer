within Demo;
model TestCombiTime
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(table=[0.0,1,10; 5,5,50;
        10,-3,-30])
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TestCombiTime;
