---
marp: true
paginate: true
footer: 'Lecture 5a: Modelica基础语法之标准库MSL | 航'
---

# Lecture 5a: 标准库 Modelica Standard Library
作者：航佛儿
课程地址: https://github.com/hyumo/ModelicaPrimer

----
# Modelica Standard Libary (MSL) 介绍 

Free library from the `Modelica Association` to model mechanical (1D/3D), electrical (analog, digital, machines), magnetic, thermal, fluid, control systems and hierarchical state machines. Also numerical functions and functions for strings, files and streams are included.

- Modelica Association （权威性）
- BSD 3-Clause License （开放性）
- https://github.com/modelica/ModelicaStandardLibrary
- 最新版本: v4.0.0 (2020-06-04)

---
# MSL 常识
- Modelica编译器，Modelica语言，MSL标准库三者之间的关系
    - 相互独立又相互依赖。
        - Dymola: 2022 | 语言: 3.5 | MSL: 4.0.0
    - 举例 - `OpenModelica报错`分析:
        - `Modelica.SIunits` -> `Modelica.Units.{SI, NonSI, Conversions}` 
- 版本管理
    - MAJOR.MINOR.BUGFIX （参见[语义化版本Semantic Versioning](https://semver.org/lang/zh-CN/)）
- 吐槽
    - **不要**随意去github上通过发issue来问问题，要资料
    - **不要**被一些模型库开发商"骗"了

---
# MSL 概述
![bg right:35% height: 45%](images/LibStructure.png)
- `Blocks`（貌似）强因果关系模型
- `Clocked/StateGraph` 离散模型/状态机
- `Magnetic/Electrical/Mechanics/Fuild/Thermal` 各领域基础物理模型
- `Math/ComplexMath/Utilities/Constants/Units` 辅助应用

---
# Modelica.Blocks
- 主要包含一些`强因果关系`的Block模型。
- 一般都包含一个或多个`input`和`output`连接器
- 一般被用于`信号生成`及`信号处理`
- 建议：多用于**辅助**物理模型，而不是**构建**物理模型。

---
# Modelica.Blocks.Sources 
基于`time`变量的各种信号发生器，一般通过更改`参数`的形式改变信号的形状
- `Modelica.Blocks.Sources.Constant`
- `Modelica.Blocks.Sources.Sine/Cosine...` etc
- `Modelica.Blocks.Sources.Step/Ramp...` etc
- `Modelica.Blocks.Sources.RealExperession`
- `Modelica.Blocks.Sources.CombiTimeTable`

---
# Demo
---
# Next - CombiTable



