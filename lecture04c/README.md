---
marp: false
paginate: true
footer: 'Lecture 4c: Modelica基础语法之等式语法'
---

# Lecture 4c: Modelica等式语法
作者：hyumo(github), 航佛儿(Bilibili)，_HangYu(wx)
课程地址: https://github.com/hyumo/ModelicaPrimer

----
# Modelica各元素的组成关系
- 变量: 
    - `parameter Modelica.Units.SI.mass m = 10 "质量";`
    - `Modelica.Units.SI.Velocity v "速度"`
- 表达式expression: `m*der(v)`
- 等式equation: `m*der(v) = F`
- 组件component: `Modelica.Mechanics.Translational.Components.Mass`
- 系统system: `Modelica.Mechanics.Translational.Examples.Accelerate`

----
# 等式语法的核心 - 构建平衡模型
- 语法不同于其他语言，但只要掌握核心便可加速理解。
- 核心：通过**等式**建立变量之间的关系，并使**未知变量数量与等式数量一致**
- 详细信息可参见: 
    - `ModelicaReference.BalancedModel`
    - `Modelica Language Specification v3.5 - Section 4.7`

----
# model/block 结构
- Modelica模型中最常见的单位
- 以模型名称开头(CamelCase)，以同样的模型名称结尾。
```
model ModelName "模型描述（非必要）"
  // 声明状态变量, 参数, 输入/输出变量等
initial equation
  // 初始化等式
equation
  /* 构建已知未知变量之间的关系的等式 */
end ModelName;
```
- 见MSL

----
# 变量声明
- 见Modelica基础语法之通用语法4a - 4分55秒左右开始

----
# 等式语法 - 基本等式
- 作用: 用于构建已知与未知，或未知与未知变量之间的关系。
- 格式: `<表达式1> = <表达式2>;`
- `=`符号**不表示**赋值，不同于其他语言，左侧是**表达式**而不是变量。`m*a = F`是合法的。
- 无因果关系: `<表达式1> = <表达式2>;` 与 `<表达式2> = <表达式1>;` 是等效的，且无先后顺序。

----
# 等式语法 - 条件等式
- 作用: 用于表达模型根据条件变化发生行为的改变。
- 格式1：
```
if a > b then
    x = sin(time);
else
    x = cos(time);
end if
```
- 格式2：
```
x = if a > b then sin(time) else cos(time);
```
- **核心是要保持等式数量不变**，**等式**语句中有`if`一定就有`else`。

----
# 等式语法 - 初始化等式
- 作用: 用于设置状态变量，或状态变量导数的初始值。
- 格式: 
```
...
initial equation
    x = 3;
    der(y) = 0;
    z = p0;
equation
...
```

----
# 等式语法 - 注意事项
- 时刻检测等式平衡性
- 注意变量的定义域，例如log(x), sqrt(x), 1/x

<!-- ----
# 变量数量及等式数量计算
- 已知变量：`input`, `parameter`, `constant`
- 未知变量：其他变量都是未知(`output`, `flow`, `Real/Integer/Boolean/Enumeration`) -->
