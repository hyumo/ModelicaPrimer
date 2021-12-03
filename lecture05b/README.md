---
marp: true
paginate: true
footer: 'Lecture 5b: 标准库MSL - CombiTable插值模块 | 航'
---
# Lecture05b: 标准库MSL - CombiTable插值模块
作者：航佛儿
课程地址: https://github.com/hyumo/ModelicaPrimer

----
# 主要内容
- 功能介绍
- 基本用法
- 数据导入
- 插值属性

----
# 功能介绍
- **插值**：是一种通过已知的、离散的数据点，在范围内推求新数据点的过程或方法。举例。
- **一维单变量插值**：`Modelica.Blocks.Tables.CombiTable1Ds`
  - 输入（自变量，`Real`）: `u` 
  - 输出（插值结果，`Real[:]`）：`y` 
  - 可以理解为`y = {f1(u), f2(u), ... fn(u)}`
  - 图像
----
# 基本用法
- 信号源
- 数据模型

----
# 数据导入
- 以**参数**方式导入数据
  - `table` (data[:][2]) : 多列(>=2)矩阵，第一列为自变量，**需单调递增**！
  - 示例
- 以**文件**方式导入数据（`*.txt`，`*.mat`）
  - `fileName` (`String`类型)：数据文件所在位置，注意`\\`, `NoName`
  - `tableName` (`String`类型)：table名
  - 格式
  - 示例
- 两种方式区别
  - 动态矩阵大小

----
# 插值属性
- `columns`：决定输出向量的大小
- `smoothness`：插值方式
  - Linear
  - Piecewise Constant
- `extrapolation`：外推法
  - Hold first/last table point
  - Extrapolate using last two point derivative

