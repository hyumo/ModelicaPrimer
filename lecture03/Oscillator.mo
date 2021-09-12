within ;
package Oscillator

  package FirstPrinciple
    model MassSpringDamper
      extends Modelica.Icons.Example;
      Modelica.Mechanics.Translational.Components.Fixed fixed
        annotation (Placement(transformation(extent={{70,-10},{90,10}})));
      Modelica.Mechanics.Translational.Components.Mass mass(m=1)
        annotation (Placement(transformation(extent={{0,-10},{20,10}})));
      Modelica.Mechanics.Translational.Components.Spring spring(c=1)
        annotation (Placement(transformation(extent={{32,0},{52,20}})));
      Modelica.Mechanics.Translational.Components.Damper damper(d=0.1)
        annotation (Placement(transformation(extent={{32,-20},{52,0}})));
      Modelica.Mechanics.Translational.Sources.Force force
        annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=sin(time))
        annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
    equation
      connect(mass.flange_b, spring.flange_a)
        annotation (Line(points={{20,0},{26,0},{26,10},{32,10}}, color={0,127,0}));
      connect(mass.flange_b, damper.flange_a) annotation (Line(points={{20,0},{26,0},
              {26,-10},{32,-10}}, color={0,127,0}));
      connect(spring.flange_b, fixed.flange)
        annotation (Line(points={{52,10},{60,10},{60,0},{80,0}}, color={0,127,0}));
      connect(damper.flange_b, fixed.flange) annotation (Line(points={{52,-10},{60,-10},
              {60,0},{80,0}}, color={0,127,0}));
      connect(force.flange, mass.flange_a)
        annotation (Line(points={{-10,0},{0,0}}, color={0,127,0}));
      connect(realExpression.y, force.f)
        annotation (Line(points={{-39,0},{-32,0}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end MassSpringDamper;
  end FirstPrinciple;

  package Complete

    package Templates

      partial model PartialMassSpringDamper
        extends Modelica.Icons.Example;
        Modelica.Mechanics.Translational.Components.Fixed fixed
          annotation (Placement(transformation(extent={{70,-10},{90,10}})));
        Modelica.Mechanics.Translational.Components.Mass mass(m=1)
          annotation (Placement(transformation(extent={{0,-10},{20,10}})));
        Modelica.Mechanics.Translational.Components.Damper damper(d=0.1)
          annotation (Placement(transformation(extent={{32,-20},{52,0}})));
        Modelica.Mechanics.Translational.Sources.Force force
          annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
        Modelica.Blocks.Sources.RealExpression realExpression(y=sin(time))
          annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
        replaceable
          Modelica.Mechanics.Translational.Interfaces.PartialCompliant spring
          annotation (Placement(transformation(extent={{32,10},{52,30}})));
      equation
        connect(mass.flange_b, damper.flange_a) annotation (Line(points={{20,0},
                {26,0},{26,-10},{32,-10}}, color={0,127,0}));
        connect(damper.flange_b, fixed.flange) annotation (Line(points={{52,-10},
                {60,-10},{60,0},{80,0}}, color={0,127,0}));
        connect(force.flange, mass.flange_a)
          annotation (Line(points={{-10,0},{0,0}}, color={0,127,0}));
        connect(realExpression.y, force.f)
          annotation (Line(points={{-39,0},{-32,0}}, color={0,0,127}));
        connect(spring.flange_a, mass.flange_b) annotation (Line(points={{32,20},
                {26,20},{26,0},{20,0}}, color={0,127,0}));
        connect(spring.flange_b, fixed.flange) annotation (Line(points={{52,20},
                {60,20},{60,0},{80,0}}, color={0,127,0}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end PartialMassSpringDamper;
    end Templates;

    package Examples
      model MassSpringDamper
        extends Templates.PartialMassSpringDamper(redeclare
            Modelica.Mechanics.Translational.Components.Spring spring);
      end MassSpringDamper;
    end Examples;
  end Complete;
  annotation (uses(Modelica(version="4.0.0")));
end Oscillator;
