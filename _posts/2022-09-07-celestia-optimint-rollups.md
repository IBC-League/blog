---
layout: post
title:  "使用Optimint开发基于Celestia的主权Rollups"
date:   2022-09-07 12:01:43 +0800
categories: Celestia Optimint Rollups
author: 红军大叔
cover: "/assets/projects/optimint.png"

show_excerpt: true
excerpt_separator: <!--more-->
---
![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-09-07-032356.jpg)
<!--more-->
1. Celestia已经推出测试网Mamaki, 基于此实现了数据可用性API的Alpha版本，并引入数据可用性采样

2. 同时推出**sovereign rollups**， 是一个基于L1的主权和rollup的共享安全组合

3. 关于Optimint的相关文档参考: [Optimint文档](https://github.com/celestiaorg/optimint "Optimint文档")

4. 有两个参考教程作为学习材料， 分别是 [Wordle game](https://docs.celestia.org/developers/wordle/ "Wordle game"), [CosmWasm集成](https://docs.celestia.org/developers/cosmwasm/ "CosmWasm集成") （用Rust开发智能合约）

5. 基于主权的Rollup和以太坊上的Rollup什么区别？ 主权Rollup没有智能合约集， 而是**直接将区块原始数据发布到链上**。

6. Celestia负责共识和数据可用性， 而**执行与结算**转移到了主权Rollup上。
  

7. 由于主权Rollup和Celestia之间并没有信任最小化的桥梁， 因此主权Rollup可以获得**独立的自由分叉升级**的能力。 也比非主权rolup更容易进行协调和安全升级。

8. 如何开发你自己的主权Rollup？ 使用我们创建的**Optimint**， 这是一个基于Cosmos SDK开发的ABCI客户端。

9. 和传统Cosmos区块链使用Tendermint共识不同， 由于Rollup不需要完整的BFT共识机制， 因为Celestia已经提供了共识。 你可以认为**Optimint 是 Tendermint的替代皮**， 它可以直接向Celestia发布区块。

10. 支持定制化执行环境。 基于Optimint开发的主权Rollup可以修改或者切换， 只要和**ABCI兼容**即可。

11. 当前阶段Optimint运行的是一个中心化的且没有欺诈证明的sequncer，因此是基于**悲观模式**运行，即节点仍然需要再次执行transaction以确认链的有效性。 去中心化的sequencer和欺诈证明目前仍在开发中。

12. 如果你想参与， 这里有我们为开发者真被的两个参考教程样例， 分别是 [wordle game](https://docs.celestia.org/developers/wordle/ "wordle game") 和 [CosmWasm 集成模块](https://docs.celestia.org/developers/cosmwasm/ "CosmWasm 集成模块")

13. 我们的理念， **任何区块链的Layer0都是社会共识**。 因此， 主权Rollups是真正有自己权利的独立链， 而不是仅仅基于L1的扩展。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-104758.jpg)