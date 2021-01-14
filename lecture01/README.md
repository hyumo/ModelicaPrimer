---
marp: false
paginate: true
footer: 'Lecture 1: 初窥Modelica'
---

# Lecture 1: 初窥Modelica
作者：hyumo
课程地址: https://github.com/hyumo/ModelicaPrimer

---
## Modelica 是什么？
- 一种用于建立复杂物理模型的**高级**编程语言。

---
## Modelica 有什么特点？
- 面向对象 object-oriented
    - 模拟人类思维方法，高效表达模型物理属性。
    - 极大促进模型复用
- 基于等式 equation-based，无因果关系 acausal
- 只负责建立模型，不负责求解。
    - 编译器
    - 求解器
---

## 为何使用 Modelica? 优势在哪？
- 高效：面向对象，基于等式，跨学科
- 灵活：支持多种形式的模型构建。
    - 连续模型
    - 离散模型
    - 混合模型
- 自由：丰富且高质量的开源和商用模型库
    - 开源库：Modelica Standard Library，LinearSystems2，VehicleInterfaces，Buildings等
    - 商用库：达索，Modelon，Claytex，DLR等
    - 语言开源，避免vendor lock-in
---

## Modelica 实例及求解
- [洛伦兹系统 Lorenz system](https://en.wikipedia.org/wiki/Lorenz_system)
