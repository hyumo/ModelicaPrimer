---
marp: false
paginate: true
footer: 'Lecture 4: Modelica基础语法'
---

# Lecture 04: Modelica基础语法
作者：hyumo
课程地址: https://github.com/hyumo/ModelicaPrimer
![width:200px height:200px](../images/QR.png)

----
## 本课内容与目的
- 内容：介绍通用语法，函数语法，连续模型语法。
- 目的：可大概读懂代码，能初步搭建简单的函数及连续模型。
- 提示：本节会有些枯燥，可跳转至实例或按需重复观看。
----
## 课程进度
- 第一课 语言简介 - 朋友介绍，初步认识
- 第二课 环境搭建 - 要到微信，构建“基础设施”
- 第三课 建模流程 - 翻看朋友圈，尝试深入了解
- 第四课 基础语法 - 开始date

----
## 按照模型类型学习语法
- 通用语法
- 函数语法
- 连续模型语法
- 离散及混合模型语法 (跳过)

----
## 通用语法 (部分)
- 变量声明
  - 类型: `Real`, `Integer`, `Boolean` 
  - 前缀: `input`, `output`, `parameter`
  - 可见性: `public`,`protected`
- 算术运算: `+`,`-`,`*`,`/`
- 注释:
  - 单行注释：`// this is a line comment`
  - 多行注释：`/* this is a block comment */`
  - 引号注释：`Real foo "A special comment";`
----
- 数组： 
  - `x[3]`：一维数组 (3-element vector) 
  - `x[3, 3]`：二维数组 (3x3 matrix) 
----
- 逻辑运算符：`and`,`or`,`not`,`<`,`>`,`<>`,`<=`,`>=`
- 条件语句: 
```
if <condition> then
...
elseif <condition> then
...
else
...
end if;
```
----
- 循环语句：
```
for i in 1:10 loop
    ...
end for;
```
----
## 函数语法
- 参数声明：`input`
- 输出声明：`output`
- 赋值运算符：`:=`
- 特点（部分）：
  - 自上至下顺序执行
  - 参数引用方式为**只读**, 即函数内无法更改输入参数数值
----
## 函数语法及调用
- 分区标识符
  - 函数内容：`algorithm`
  - 局部变量：`protected`
- 参数默认值：`input Real tol = 1e-5 "Input with default value"`
- 多个输出变量
- 调用
----
## 函数模板
```
function <函数名>
  input  TypeI1 in1;
  input  TypeI2 in2;
  input  TypeI3 in3 = <默认值> "注释" annotation(...);
  ...
  output TypeO1 out1;
  output TypeO2 out2 = <默认值>;
protected
  <局部变量>
  ...
algorithm
  <语句>
  ...
end <函数名>;
```
----
## 函数语法练习1 - 对比Modelica与C语言整数相加函数
编写一个add函数，使其计算两个变量a与b之和。分别使用Modelica及C语言进行编写，并且进行对比。

----
## 函数语法练习2
编写一个coo函数将致密矩阵M转换为Coordinate/Triplet储存格式的稀疏矩阵。

例子:
```
M = [1.0,2.0,3.0;0,4.0,0;5.0,0,0]; "致密矩阵"
```

```
// M转换为COO格式的稀疏矩阵
i, j, value
1, 1, 1.0
1, 2, 2.0
1, 3, 3.0
2, 2, 4.0
3, 1, 5.0
```
----
## 函数语法实例
```
# python的scipy实现 
>>> from scipy.sparse import coo_matrix 
>>> M = [[1.0,2.0,3.0],[0,4.0,0],[5.0,0,0]]
>>> print(coo_matrix(M))
  (0, 0)        1.0
  (0, 1)        2.0
  (0, 2)        3.0
  (1, 1)        4.0
  (2, 0)        5.0
```
