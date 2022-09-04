---
layout: post
title:  "Evmos: IBC加持的以太坊副本"
date:   2022-08-04 14:15:31 +0800
categories: Evmos IBC Ethereum
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---
1. Evmos的定位是Cosmos生态的EVM Hub， 其前身是Ethermint， 目前Ethermint仍然被Cosmos生态多个项目使用， 以实现和EVM的兼容
2. Evmos的想法是进一步降低应用链的难度， 借鉴了目前Cosmos生态的共享安全概念， 区别是Cosmos生态是可以多个方案中选一个适合自己情况， Evmos默认就是全局共享
3. 在以太坊社区Evmos对之前GAS销毁的机制EIP1559做了修正， 将相关收益重新分配给开发者和用户

<!--more-->

> 文章和活动同步推出，周四晚9点Twitter Space继续聊. 👇🏻👇🏻  **扫码收藏** 👇🏻👇🏻

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-110213.jpg)

## Evmos是什么？ 什么定位？ 
官方给Evmos的描述是， 可扩展高性能的PoS区块链， 与以太坊完全兼容，基于Cosmos SDK构建， 运行在Tendermint Core共识引擎之上。 

Evmos名字的含义是**EVM on Cosmos**, 其定位是EVM hub of Cosmos。

Evmos的野心还是不小的， 想把以太和Cosmos的现有优势都拿走。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-113112.png)

## 那么Evmos作为一个集成者， 在它眼里的以太坊和Cosmos分别有哪些优势又有哪些问题呢？

先说Cosmos。 

Cosmos的最大能力是**基于IBC**的通用跨链能力。 不仅仅是资产， 还包括信息的交互。 尤其是在**Interchain Security和Interchain Accounts**出来之后， 其互操作性达到一个新的高度。 

而Cosmos应用链的范式进一步推升Cosmos生态的可扩展性，即一个应用一条链的类比低门槛的分片模式，应用链天生具有独立主权和横向扩展性。 

当然，Evmos也给Cosmos提出了一些**问题**。

应用链的开发门槛比较高， 虽然提供了Cosmos-SDK工具包， 但是对开发者的要求是链级别的能力。 以及， 应用链的可组合性比较弱（相对于智能合约） 。

不过Cosmos自身也在演化， 比如**跨链安全**是将Cosmos Hub的安全租给更小的**消费链**。  Evmos也是这个思路， 将自己链上的安全租给它下面的应用链。 

再说以太坊生态。 

以太坊的最大优点就是现阶段共识最强， 开发者最多， EVM兼容的链也是数量众多， 应用可以无缝在各个EVM兼容链上部署。 

所以，现阶段虽然以太坊有若干存在的问题， 但是架不住开发者认可度高， 以及， 人们的惯性很难短期变化。 所以Evmos认为， EVM就是Crypto的JavaScript（**门槛低，用户多**）

EVMOS眼中以太坊存在的问题是什么呢？ Evmos将改进目标放在了EIP-1559上， 认为以太坊的主要激励没有考虑到开发者和终端用户。 EIP-1559方案中是将Base Fee做了Burn， Evmos将这部分重新分给了开发者和用户， 可以理解为是讨好**开发者和用户**。

## Evmos的方案: 合二为一

前面提到EVMOS是Cosmos生态的EVM Hub， 但EVMOS的重心其实是EVM， 即立足以太坊生态， 这是它的本体。 

而作为Cosmos-SDK实现的应用区块链， 可以获得Tendermint共识引擎带来的比以太坊更高的性能，即更高的吞吐与快速区块敲定。  当然， 还有更低的手续费。 

其附加能力是和IBC生态的互通， 这是Cosmos生态最大的互操作能力基础。 

打一个比方， EVMOS的娘家是Cosmos， 然后远嫁到以太坊生态， 因为那里靓仔多（开发者和用户）。 

因此， Evmos的解决方案就是， 从Cosmos生态继承了互操作能力， 看中了以太坊生态的最大的开发者生态， 将EIP-1559的提案做了优化， 以更好的吸引开发者和用户， **降低链的开发难度**。 借助共享安全， 即新的链不用考虑网络安全， 专注上层业务逻辑开发。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-115231.jpg)

当然， 为了进一步将激励升级， Evmos也借鉴了类似苹果商店的模式， 即开发者和运营方分成的方式实现利益共享。 另外， 还设置了将社区池中的token奖励给优质App的用户。 值得一提的是， Evmos还特别设置了将部分交易费用奖励给IBC的relayer（现阶段IBC relayer是没有特别奖励的）， 这个方式是一个比较有加分的举措。 

更不用说， Evmos还有一个更大范围讨好更多用户的举措， 就是空投了。 

小结： 作为没有历史包袱的新链， 最大的好处就是将前人的优点全部继承下来， 不足的加以改进， 而Tendermint、Cosmos SDK以及geth就是Evmos可以拿来直接继承的遗产。 

## 以太坊生态会买单吗？
EVM兼容的链如此之多， 以太坊生态的项目选择Evmos的理由成立吗？

PoS共识？ 更快？更便宜？

从以太坊生态当前趋势来看， 更快更便宜可能并不是一个核心亮点， 因为EVM兼容链都有这个能力， 更不用说L2的介入了。 

我觉得虽然没有压倒性优势， 但是有一个不算优势的基本优势， 那就是这个项目兼容性比较强， 以太坊生态的用户很**容易看懂**也容易接受。 

开发者对Cosmos生态的了解还需要一个过程， 但是对EVM兼容链的接受度是丝滑的。 无论是ERC20或者721，以及钱包， 用户接受与使用的门槛几乎为零。 

比如mathwallet钱包近期开通了对Cosmos生态多条链的支持， 在考虑为生态用户提供NFT激励时，很自然就想到了Evmos的NFT模块， 从一个侧面印证了兼容性对用户的潜移默化影响。 

**兼容性**是一个不减分的亮点， 但是要加分也不容易。 

不过Evmos给予它的应用链的好处不仅仅是租用它的安全， 也包括Evmos自己积累下来的**基础设施**， 包括钱包、浏览器、预言机、桥以及RPC等。 

更长远的发展， 还是Cosmos生态的加持以及未来IBC生态影响力提升之后带来的福利。  

我们前面将Cosmos生态类比为Evmos的娘家不完全是开玩笑， 毕竟IBC协议目前的影响力持续提升， 一个充当Cosmos生态的EVM门户的链自然会得到更多的关注。 

因此， 当Cosmos生态的影响力快速增长之后，以太坊生态自然会有很多开发者要迁移到Cosmos生态， 而他们了解Cosmos生态的第一个项目很有可能是Evmos。 

从这个角度说， Evmos也可以理解为是以太坊生态嫁接到Cosmos生态的桥头堡。 


## 潜在亮点， Cevmos 
这是Celestia和Evmos合作的一个项目， 可能是Evmos最大的变量。

目前对区块链扩容的机制有直接优化共识机制本身(提升幅度有限）、以太坊的Rollup机制，即L1负责结算和出块， 交易的执行在链下完成（这仍然会有GAS竞争的问题）、还有Cosmos应用链的水平扩容方式(天然分片方式， 不去硬刚TPS，而是划分专用zone）。 

而最新的一个方式就是模块化，将层级分的更细，各司其职。 

在模块化方案里， Cevmos不再需要自己去做全部的一体化验证， 而是借助轻客户端下载很少的一部分数据就可以做可用性验证。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-015645.jpg)

Celestia是模块化区块链的领头羊， 业界推测可能是高性能领域的一个终局， 这对Cosmos生态也是以为未来潜在的变量。 

模块化是近期刚刚兴起的一个关注领域， 可以将Cevmos作为Evmos的一个战略武器库，这一领域还在早期， 也确实是一个潜在加分项。  

## 潜在挑战

### 1）应用

Evmos的开局虽然不太顺利， 第一次主网启动失败， 不过总体来说借助空投以及EVM hub以及EVM最大兼容还是吸引了不少眼球， 以太坊已有应用也可以平滑迁移。 

接下来就是真正的应用如何发展了， 什么样类型的应用有可能在Evmos成为一个大规模的需求？  从这个角度说， 其他EVM兼容链**都是Evmos的竞争对手**。 

未来如何吸引更多类似AAVE这样的头部应用加入，以及如何孵化自己生态内的爆款应用都是一个漫长之路。 一个生态其实总应用数量还不是绝对的，最主要的是两个， 一个是**龙头应用**，另一个是新项目的产生速度。 这个目前Cosmos生态是最明显的。  

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-111945.jpg)

### 2）安全
Evmos积极拥抱EVM， 同时也会因为EVM的问题带来一些潜在的问题。 比如， EVM兼容链默认互通方式就是**借助跨链桥**， 而且跨链桥数量众多， 而几乎很少的桥是能被证明安全的。 

Evmos使用的一个跨链桥Nomad在8月2日遭遇Bug，损失接近2亿美金， 所幸的是Evmos受到的影响还不是特别明显， 但是类似事件发生产生的潜在影响是不确定的。 

### 3）代币分配

Evmos目前的通胀率不低，4年之后减半， 总数量将达到10亿。

但是目前似乎Team的份额偏高，无论是4年间的，还是4年后的区块奖励， 目前都超过20%的比例。 虽然说前面空投的数量也惊人， 不过这个team的比例确实不低。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-114833.jpg)

## Evmos会成为Cosmos的竞争对手吗？

Evmos也是定位为应用链， Cosmos也是应用链。 

Evmos 基于共享安全降低应用链门槛， Cosmos Hub的共享安全也是类似。 

Evmos还要团结以太坊生态的开发者， 以及还有Cevmos这样的模块化能力加持，会是Cosmos的竞争对手吗？

表面上看起来是有一些重叠的地方， 但是很难成为真正的竞争对手。 

Evmos虽然有一些增强能力， 但是总体上是Cosmos的一个子集或者分支， 比如Evmos是默认共享安全， 而Cosmos生态的共享安全只是**可选方案**之一。 

最主要的原因是， Evmos首先是EVM， 其次才是on/of Cosmos.  它想争取的市场就是EVM的市场。 Cosmos生态的用户并没有多少动力去体验EVM， 但是EVM生态的用户还是挺有动机去体验一下Evmos的。

当然， Cosmos生态最有**网络效应的是IBC协议**， 几乎是所有其他公链都难以复制的一点。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-015754.jpg)

所以， 乐观一点来看， Evmos会给Cosmos生态带来更多的用户。 

## 参考资料
- https://twitter.com/DougieDeLuca/status/1490739306801111046
- https://twitter.com/CosmosClub_/status/1548248671401041925
- https://medium.com/evmos/the-evmos-token-model-edc07014978b
- https://github.com/tharsis/awesome
- https://foresightnews.pro/article/h5Detail/9634
- https://rainandcoffee.substack.com/p/the-connection?utm_campaign=post&utm_medium=web
- https://www.theblockbeats.info/news/29604
- https://twitter.com/lurkaroundfind/status/1552417360899866624

<br/>

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-104758.jpg)