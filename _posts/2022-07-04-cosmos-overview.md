---
layout: none
title:  "Cosmos生态概览"
date:   2022-07-04 14:15:31 +0800
categories: Cosmos
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---
1. Cosmos的灵魂是去中心化和互操作， IBC充当了可组合性的桥梁， 并且在架构上具有美感，以及天然具有水平扩展能力
2. Cosmos Hub虽然是生态第一个Hub， 但是社区共识是Hub最小化主义， 即探索的新功能尽量不要在Cosmos Hub上实现， 而是让其他Zone来试验， 给社区更多项目机会， 并且保障Cosmos Hub的安全.
3. Cosmos为不同的团队需求提供了多种解决方案， 从最高门槛的应用链， 可以实现完全主权独立； 也可以实现共享安全， 将ATOM的安全共享给其他生态； 也可以直接基于多种智能合约平台开发合约应用。


<!--more-->

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-12-120041.jpg)

**本文同步活动** 👆🏻👆🏻👆🏻, 周四晚8点Space，需要进wx群请加: `ibcleague`


在正文开始之前， 先将多链、跨链、以及跨链桥说明一下。 

## 多链、跨链、跨链桥 

1、第一个是叫MultipleChain, 指的是相互独立的公链， 比如Solana, Near, Ethereum, Cosmos各个链统称为多链

2、第二个是MutipleChain + Bridge(跨链桥) = Cross-Chain(跨链)。 即借助第三方桥梁将各个分散的公链链接起来， 实现跨链效果。 V神对跨链桥提出了担忧， 认为A链的安全出问题， 会影响到B链mint的资产。 

> 当桥上资产足够多的时候， 攻击者就越有动机来攻击。 因此， 跨链活动具有“反网络效应”， 即资产不多的时候， 很安全； 资产越多，越不安全。 
>
> --- Vitalik

3、第三个是InterChain， 是基于协议的同构链， 比如基于IBC协议的各个zone的组合叫多链或者跨链。 

这个InterChain本意是链之间的意思， 我个人理解也有”内部“的意思， 即体现了同构， 实际就是基于标准IBC协议。 

自然， **本文的上下文是指InterChain**

下面， 让我们进入正文吧。 

## Cosmos的灵魂: 去中心化和互操作

> 区块链的互联网
>
> Cosmos是一个基于互联应用和服务的不断扩展的生态系统，为去中心化的未来而建立。
>
> ---  https://cosmos.network/

在Cosmos官网上明确指出， Cosmos是区块链的互联网， 是面向去中心化的未来构建， 为相互链接的app和服务构成的**近乎无限扩展**的生态。

Cosmos的核心原则，是**主权独立 + 互操作性**.  确保链的独立，并且能够相互自由交互。  我们可以认为这是Cosmos生态的基本哲学。 它倡导组织的可持续发展，各自具有自由裁量权。

Cosmos的理念是，区块链的扩容趋势不是依赖单一的链完成， 而是每一个垂直应用就是独立的一条链, 实现了分片想要达到而很难做到的效果.

Cosmos生态更希望通过**去中心化协作**来实现区块链的最大**可组合性**， 所以IBC是Cosmos生态的基础建设，有了可以共同使用的高速公路， 生态的互联互通以及诞生的创新将不断涌现。

Cosmos的去中心化程度甚至让人有夷非所思的错觉， 很长一段时间在市场上几乎听不到声音，创始人离开(最近又回归)， 没有领导人光环， 在生态的存在感极低。 截止2021年底的时候， 很多媒体和KOL在写年度总结的时候， 甚至都不愿意提及Cosmos。

Cosmos是独特的， 是它的哲学，它的思想， 以及核心开发团队的结构， 是L1中除比特币之外最亮眼的。

Cosmos追求**主权独立和自由的可互操作性**， 生态的发展早已超越了创始人的预期，也脱离了对创始人的依赖。

在谈及未来5-10年人们对Cosmos的看法时， Jack Zampolin回答道: 

> As an ubiquitous but unseen layer underlying digital finance. Everyone uses it but increasing few people know it. 
> 作为一个无处不在但看不见的数字金融底层。每个人都使用它，但越来越少的人知道它。
>
> --- Jack Zampolin





## Cosmos生态架构: 强IBC,弱Hub

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-050600.png)

我们先说大家耳熟能详的Hub. 

在过去的架构图中， 大家很久以来都觉得Cosmos Hub是生态的中心， 其实这个说法是不完整的。 

### 1、每一个zone都是一个Hub

大家都是zone，也是Hub. 在网络拓扑结构上二者是对等的， 即他们是相互链接的节点。 
最早出来的两个Hub是Cosmos Hub和Iris Hub， 这个其实仅仅是约定俗成， 并不是除了这两个Hub之外就没有Hub了。

相反， 其他的也都是Hub. 

不过称为Hub有一个潜在的含义， 就是这个Zone比较活跃，比如Osmosis和Juno都可以叫Hub. 一个新的不知名的链叫Hub就有点勉强了。 所以我开玩笑说， **Hub是一种荣誉称号**，因为Hub的本意就是聚合的意思， 资产和应用在你这里聚合， 你就是Hub。 

### 2、Cosmos Hub是Hub中的老字号. 

Cosmos blog中对Cosmos Hub的描述是这样的：

> 枢纽不是王国，而是港口城市。它不是中央银行，而是结算所。这不是网络服务提供商，而是交换点。不是航空公司，是机场。一个好的枢纽不是一个统治者，而是一个仆人领袖。
> 
> -- https://blog.cosmos.network/the-cosmos-hub-is-a-port-city-5b7f2d28debf

我喜欢Cosmos Hub作为一个”仆人领袖“的理念。 这意味着，有所为有所不为。 

前面虽然说zone和hub是对等的， 但是作为老字号的Cosmos Hub自然有先天优势，那就是默认的一些特别核心的能力是在Cosmos Hub上体现的，比如最知名的就是**跨链安全Interchain Security(ICS)**, 这一能力其实是可以理解为Cosmos生态从之前的独立安全里的一个再平衡， 为新的消费链提供租赁安全，从而降低新的节点启动的门槛。 当然， 这一功能也是权衡了长期以来大家对$ATOM代币价值捕获的批评。 

> 备注, **跨链安全**: 也有叫共享安全, 是指消费链有正常的节点出块，也有自己的代币， 但是网络安全是通过IBC映射到Cosmos Hub里的atom来实现的， 即Cosmos Hub验证人跑两个节点， 一个是Cosmos 节点， 一个是消费链节点。 

共享安全是近期的一个重要的热点， 已经得到社区的热烈讨论， **社区72号提案**就是P2P validator专门为启动3条消费链申请了Grant，他们开发的第一个项目Neutron有可能是第一个使用共享安全的消费链。 同时Quicksilver也正在开发消费链。  

> Interchain Security on the hub is pretty exciting Hub上的跨链安全非常让人激动
> I hear it's so hot it's almost radioactive. 何止是热，简直是放射性的热量
>
> --- Jack Zampolin

理论上说， Quicksilver已经在免费开发消费链， 就没有必要付费让P2P validator来开发。 但实际这里更多的是"marketing"因素， 即为这个刚出来的跨链安全的应用提供一个助力, 可以理解为是对新的消费链项目的”**扶持**“。  

不管怎么样， 共享安全这个概念在短时间获得社区广泛关注和讨论， 很有可能为Cosmos的版图带来一个大的利好变化。 至于共享安全最终效果如何， 还需要实践来验证。 



### 3、Hub功能最小化

但是， Cosmos Hub的能力到此其实就基本结束了， 这就是我们说**弱hub**想表达的点， Cosmos Hub并没有更多新的能力。 

最具代表性的例子是过去刚刚发生的69号提案， 即否决了在Cosmos Hub上启用CosmWasm. 这件事其实是创始人Jae Kwon发起的反对票， 核心理由就一条: **Hub应当功能最小化**。 

我认为这是作为Hub，尤其是一个老字号Hub需要的谨慎，毕竟如果Hub出了问题， 对整个生态的影响是不可估量的， 而作为要加入的新功能和带来潜在Bug的概率是正相关的。 

这是原因之一。 

原因之二是， Cosmos生态的哲学决定了， 新功能应当在新的zone里来体现是更适合的。CosmWasm是一个新出现的功能强大的构建智能合约的工具， 作为新的zone完全可以启用它， 比如Juno就是基于CosmWasm。 

现阶段Cosmos Hub最小化的功能主要是跨链安全

**小结**: Cosmos生态的各个链作为zone的同时也可以充当Hub， Hub是能力也是荣誉。 Cosmos Hub作为老字号， 共享安全将给消费链以及$ATOM带来赋能， 同时生态的整体哲学是新功能更多在新的zone里体现， 而不是Cosmos Hub都包办了， 这样也变相的给各个zone更多公平发展机会。 

虽然Hub的存在感很强， 但是其实Hub的实质是弱化的。 而另一个存在感很弱，其实很强的， **是IBC**， 让我们一探究竟. 

## IBC,  谦卑的王者 

> 问渠那得清如许，为有源头活水来
>
> -- 朱熹《观书有感·其一》

IBC跨链协议， 它就像我们人类的语言， 让我们实现无障碍沟通。

IBC, 即**跨链通讯协议**(Inter-Blockchain Communication), 是区块链版本的TCP/IP协议, 事实上在技术设计上就是参照TCP/IP协议实现的, 是构建区块链互联网的重要**基石**, 是各个城市之间的高速交换通道. 

![from ICF](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-12-014518.png)


在IBC之前的区块链世界, 区块链在获得爆炸性增长的同时, 他们也局限在各自封闭的孤岛里, 无法相互沟通, 这种模式不符合世界发展的趋势. 

今天Cosmos生态项目之所以得到极大发展， IBC跨链协议功不可没。 开放协议带来的是网络效应，带来的是**更大范围的可组合性**。开放协议的好处是， 带来高度实用性，高度抽象， 无需考虑底层细节， 实现接口即可实现互联互通。

可以说, 对IBC的认可度， 决定了一个项目在Cosmos生态的发展高度。 

Cosmos生态积极拥抱IBC的，意味着希望和生态一起发展， 而那些对IBC接入不够积极的， 基本会因为没有源头活水而逐渐枯竭。在开放还是封闭的选择面前， 格局一目了然。 




IBC可以提供的能力:

- **无需信任**.  每个区块链通过轻客户端来验证其他区块链的状态, 无需信任中继器.

- **对异构区块链的支持**.  IBC不仅支持基于Cosmos SDK开发的同构生态内的应用链, 同样可以与像BTC和Ethereum这样的异构链的链接

- **在应用层实现自定义**.

- **经过验证的技术**. 在mapofzone里看到目前已经有49个Zone加入, IBC transfer数量超过4百多万.


![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-050530.png)


**小结**： 我想把所有的赞美都送给IBC， 它是Cosmos的根基， 它代表了开放与协作， 它是如此的低调几乎感受不到， 又是如此的光芒万丈. 任何时候， 当有人问你Cosmos生态有什么最大亮点时，你都可以说是IBC。 **如果Cosmos代表宇宙， 那我觉得IBC代表光**

## 谁在主导Cosmos生态的发展

总体来看Cosmos非常去中心化， 没有具体某一个“公司”操办所有的事情， 有ICF基金会， ICF会对生态项目提供资金支持。

创始人是 Jae Kwon, 中间一度离开项目， 最新变化是创始人已经回归并且带来新项目Gnoland.

Cosmos生态将有两个实体，一个叫**NewTendermint**,由Jae Kwon负责， 目前负责的项目包括 Gnoland、Tendermint2、Cosmos-SDK; 另一个实体是**Ignite**, 由 Peng Zhong负责， 目前关注的项目包括 Ignite CLI 和 Emeris. 这一块因为pz刚刚离职Ignite这块应该有一些新的变化. (*Emeris由于没有发行token缺乏激励， 社区决定暂停，目前暂时由Crescent产品代替，是一个无锁仓的DEX*）

看看有哪些开发团队为Cosmos核心组件作出贡献: Interchain GmbH, Informal Systems, Strangelove, Iqlusion, Regen Network, Osmosis Labs, Confio, Orijtech, Hypha, Vulcanize, Iris, 还有更多。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-050555.jpg)

这就是最让人兴奋的Cosmos文化， **彼此独立，又相互协作**。 生态各个项目独立发展， 同时为基础设施提供支持， 基础设施反哺各个整个生态，良性发展。 这也是为什么有人感慨这是继比特币之后的又一个亮眼生态。 我觉得这里重心是开放。



## Cosmos SDK, 第一大区块链开发框架

> Cosmos-SDK是一个开箱即用的工具包，支持**一键发链**； 可以让你快速的在Tendermint基础上构建区块链应用。通过Cosmos-SDK构建区块链的效率是基于EVM的10倍效率.
>
> ---  https://twitter.com/buchmanster/status/1248847732279775232

Cosmos SDK是构建基于PoS共识,支持多资产区块链的开源框架.  基本用Cosmos SDK开发的链我们都称之为**应用链**.

Cosmos SDK是**开发者的Ruby On Rails**, 即已经将常见的组件封装为脚手架,开箱即用, 大大提高效率.  开发者不用再关心底层复杂的共识实现, 包含的Tendermint Core组件提供了成熟的BFT共识引擎

Cosmos SDK是世界上构建区块链使用最广泛的开发框架, 已经为开发者提供了若干成功案例, 包括Binance, Crypto.com, OKEX, Cosmos Hub, IRIS Hub, Binance Chain, Terra, Kava等.  更多通过Cosmos SDK实现的项目可以从这里查看: https://cosmos.network/ecosystem

Cosmos SDK的核心特点包括:

- 模块化
- 可扩展性
- 互操作性
- 安全
- PoS共识
- 自治
- 开源
- 基于Golang语言

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-043351.jpg)

目前接入Cosmos生态的区块链达到265条.   按照市值排名前10名[如下](https://cosmos.network/ecosystem/tokens):

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-050540.png)

Substrate以复杂和功能强大出名， Cosmos SDK则是以**模块化和易于使用**闻名。 

另外， Golang语言也为Cosmos生态争取了很多的开发者， 目前Cosmos生态的技术栈基本以React.js  + Golang为主体。

在此基础上， 社区还提供了更简单的脚手架使用方式， 比如Starpot，后更名为**Ignite Cli**. 

在Github上查看通过Starport启动的项目目前有**642**条 (真实上线或者测试网的可以参考社区数据），[点击这里查看](https://github.com/search?o=desc&q=%22initialized+with+starport%22&s=author-date&type=Commits)

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-050545.png)



## Cosmos生态发展阶段与趋势

这是我个人的一个理解， 未必准确， 仅供参考。 

### 0、第0阶, 应用链成为共识

其实是说的一个**整体趋势**， 那就是**应用链成为一个扩展性的主要解决方案**。 对于共识来说， 几乎很难存在类似“摩尔定律”这样的好事， 所以共识是有天花板的，但是幸运的是Cosmos生态在一开始就避开了天花板，简单说就是一事一议， 为垂直的应用独立出一个链，可进可退，并且相互隔离，同时借助IBC又相互链接。 我个人喜欢这种架构的美，**简约不简单**。

目前重视应用链的还有NEAR生态的**章鱼网络**。 章鱼网络尝试通过Substrate IBC将NEAR-Cosmos-Polkadot**实现全面的互联**, 非常期待IBC协议能够在WEB3世界里实现自由互通的载体. 确实, 以太坊的互通设施比较齐全, 非EVM的链实现互通能带来怎样的化学反应还是让人很兴奋的. 

### 1、第一阶段. Copy From Ethereum

以DeFi为重心， AMM通过创新和激励来吸引更多的用户。 这一阶段更多的是借鉴DeFi行业的已有经验， 站在前人的肩膀上。 DeFi未必是最终趋势， 但我们认为是生态的基础设施，DeFi是未来dapp繁荣或者web3发展的重要基石。

这一阶段最具代表性的是Osmosis， 按照我们前面的理解， Osmosis已经可以称得上是一个Hub了， 是**DEX的Hub**。 

而Evmos则借助EVM兼容性（前身是Ethermint模块）走向了以太坊， 它的定位是**EVM Hub**.   

Evmos 这个项目有点”走出去“的意思， 即带着IBC的能力， 到以太坊空间去发展，能够更好的衔接Ethereum和Cosmos生态， Evmos发展的底气是， **我的娘家是Cosmos生态**

Juno则在CosmWasm基础上成为了智能合约的代表， 成为**智能合约Hub**. 

Axelar和Gravity Bridge等跨链桥会进一步提升IBC生态的资产活跃度。 当然， 涉及到跨链桥安全问题是一个不容忽视的问题， 我们需要找到一个可验证的更安全的方案。 越是跨的生态多的技术发生Bug后的后果相应越大， Gravity Bridge 定位与以太坊对接， Axelar则资产类型更加丰富，目前在Cosmos社区接受度相对更高。**不过关于跨链桥的争议非常大, 从安全性角度， 如果双方都是IBC协议实现对接自然是更稳妥的方案**。

第一阶段Cosmos生态毫不犹豫的在Copy以太坊的成熟经验，以太坊最大的已经验证的就是DeFi。 相信在以太坊生态里的**借贷、衍生品、保险等**也会继续在Cosmos生态得到借鉴。 

第一阶段可以说完成大半， 有以太坊的作业可以抄， 决策上没有多少困难。 

DeFi相对成熟之后，目前其他一些在探索的玩法， 比如NFT、game等应该可以陆续登场。 目前这一块Cosmos生态里的声音还非常小， 也是创业者的一个潜在机会。 一个挑战是， 如何将一个成熟的概念在Cosmos里作出一定的新意。 如果说DeFi可以抄作业能获得成功， 这一块可能难度会大一些。 

### 2、第二阶段, 智能合约与消费链

是跨链安全、跨链账户和智能合约的发力。

在第一阶段里， 更多是独立的”链“，并没有出现以太坊里那种智能合约的繁荣。 优点和缺点都存在， 优点是高门槛带来安全， 同时具有独立主权， 实现最大程度自治和灵活性； 缺点则是启动门槛高， 应用开发速度较慢。 

但是基于智能合约的开发就重新回到了直接面向应用的快速启动。 CosmWasm作为作为统一智能合约的标准得到了Cosmos社区众多的支持也就不难理解了。 

多个因素的组合形成了当前Cosmos生态**繁荣推进**的基础:

- 独立zone是基础

- 跨链安全降低了新的消费链的安全门槛

- 跨链账户让各个链之间的互操作变为可能

- 智能合约降低了开发应用的技术门槛。

> 备注: **跨链账户**是Cosmos生态提供的互操作的能力， 在A链可以操作B链的功能， 提升用户操作体验， 减少界面切换就可以一体化完成所有动作。 

这一阶段现在是正在进行， 需要时间不断检验和调整。 

### 3、第三阶段, Hub子生态纵向发展

有资格成为Hub的zone，将在自己的独立王国里构建子生态， 无论是Osmosis还是Juno或者Evmos。 

这些Hub未来都可以独立对基础设施作出调整， 比如未来**各个Hub也有可能开启自己的共享安全**， 将自己的安全租赁给子生态。 对于是基于智能合约的应用自然无需考虑， 但是希望有更多灵活性的则完全可以参考现在的消费链模式。 

其实很多的创新都是在各个子生态里体现出来的， 比如目前出现的模块化苗头。 

### 4、第四阶段, web3星辰大海

在基础设施完善之后， 缺乏的永远是人们的想象力。web3发展进入策马狂奔阶段。 

过去的封建帝国里皇帝为了分权， 会将各个王子送出去成为一方诸侯， 但是老国王死了基本整体就挂了。 IBC则是不死的精神领袖， 会将Cosmos各个生态**和谐而有力的统一起来**。 

请想象一下万朝来拜的画面。 

**小结**: Cosmos生态目前的包容性和多样性已经体现了非常明确，从开发难度说， 门槛从高到低分别是独立链(zone)、消费链、智能合约应用。 从各个独立生态的规模来说， 即可以是独立的zone，也可以是有自己的子生态（Hub）。



## 忽如一夜春风来, 众多项目看花眼

对于Cosmos生态里的已有项目这里限于篇幅就不再介绍了， 大家可以在mapofzones里可以看到目前有49条链接入了IBC，我们这次主要聊聊社区里比较受关注的**新项目**。 为了简洁，这里只列出项目的核心特点，便于你快速了解整体。 已有的49条链可以参考下图: 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-12-041405.png)

### dYdX V4迁移到Cosmos生态

这是最爆炸的一个新闻了， 细节我们暂不追溯， 总结几个要点：

- dYdX是一个订单簿项目， 特点高吞吐，低延迟
- dYdX在StarkEx引擎上的性能是每秒1000挂单， 10笔交易(10 trades, 1000 orders per second)
- 迁移到Cosmos主要原因是什么？ 主权独立， 拥有自己的链可以灵活配置所有的基础设施参数。 而目前以太的L2离成熟还有一段距离。
- dYdX迁移到Cosmos后如何解决性能的问题?  方案是节点会同时运行in-memory orderbook， 即**链下撮合， 链上成交**。 
- Cosmos的TPS并没有夸张的表现， 但是链的基础设施可以自己调整， 比如**Sei Network**也是一个订单簿项目， 他们在48个验证人基础上将timeout修改后达到**150**的TPS。 
- 另一个原因没怎么提，其实是IBC的互操作性，一处接入，到处拥抱。🤗 



### Gnoland

这是创始人 Jae Kwon回归后带来的项目。

- Gnoland定位是**高性能智能合约**平台
- Gno提供了项目专用语言Gnolang,是Golang的一个分支，可以带来更好的性能提升（基于Golang的Goroutine的并发能力）
- Gnolang相比Solidity和Rust的优点： 更快的编译速度、简洁的语法、从Golang继承的高效使用资源的并发能力
- 在69号提案中， Jae Kwon将项目空投和提案挂钩， 只有给69号提案投NO的才有机会获得空投， Jae的最大理由是，”Cosmos Hub应当保持功能最小化“



### Agoric

Agoric项目定位是安全高效的**基于JavaScript的智能合约平台**， 其安全机制来源于其创始人Mark Miller的Agoric Open Systems论文以及他的E编程语言的一系列特性提供的支持。


同时， Agoric提供**超额抵押的稳定币**， 是双币模型， BLD用于治理， IST是稳定币， 用于费用token， 比如手续费和GAS费等。 其机制和MakerDao类似，有完整的抵押和清算机制。

借助Agoric平台，可以让智能合约的开发变得更加便捷和安全， 因为JavaScript的开发者更加广泛， 能够满足更普遍的开发需求。

Agoric的高效开发来自于其已经集成了很多开箱即用的功能包， 比如稳定币IST， 使用ERTP开启自己的项目Token， NFT， AMM组件， 以及一系列的**UI的复用组件**。开发者不用从0到1构建自己的功能， 相当于提供了一个脚手架，这个对开发者很有帮助。 

Agoric2022路线图是Q3实现IST稳定币上线, 许可方式的智能合约, Q4智能合约无许可发布。

**小结**： 两个点， 一个是基于JavaScript的智能合约平台，降低开发者开发门槛； 另一个是对标MakerDao的超额抵押稳定币， 这个是生态里比较受关注的原生稳定币， 在UST之后目前缺少一个像样的稳定币。 现有的通过跨链桥过来的资产， 社区很多人对其安全性有担忧。 

### Celestia

这个项目可谓是野心勃勃， 最想搞事了， 其倡导的概念是”模块化“, 即将DA、共识、结算、执行分开，目标是为了高扩展性，满足部分场景的高TPS需求。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-11-055649.jpg)

Celestia前身叫LazyLedger,计划2022年底主网上线. Celestia解决性能瓶颈的核心方式是,** 放弃链上执行**, 只通过**纠删码以及默克尔树结构**来确保数据可用性, **执行的部分交给终端用**户. 本质是将部分职能从链上剥离， 需要验证的时候借助密码学来实现。

如果说Cosmos zone是**横向扩**展， 那么模块化则是一个**纵向扩展**。 

这个架构目前还是比较新， 或者说还在早期， 但是确实得到业界的普遍关注， Polygon也在发布自己的模块化项目叫Polygon Avail。

不过是否存在这样的”银弹“还需要进一步实践检验。 

但是无论怎样， Cosmos生态的话题可以丰富很多了， 以前TPS上没什么特别可聊的， 毕竟zone隔离了也不怎么在乎这个， 但是现在有了Celestia，可以和L2也好， Solana也好， 一起**battle一下高性能**了。 

还是那句话， 这个对Cosmos来说仅仅是局部的试验， 完全交给Zone去做， 和全局没有牵连。 说白点， 失败了就失败了没什么大不了，不影响生态； 成功了，则可以反哺生态。 

### EVMOS

前面跨链桥的部分提到过EVMOS， 这里再细述一下。 

EVMOS，正如其名字所说，中心在EVM，只不过背后依靠的是IBC。 喜欢以太的用户比较容易接受Evmos，在他们眼里就是一个和EVM兼容的另一条链。

现在去Github上查看**Ethermint**的项目已经重命名为EVMOS，可以理解为原来作为一个模块， 现在升级为一条链了。 

EVMOS的优势就是**链接两个网络， 即EVM和IBC**。

EVMOS认为，当前Cosmos生态开发一条链还是相对复杂，并且已有的EVM开发者生态占有绝对优势。 EVMOS引入了自己的共享安全， 其他的基于Ethermint开发的链完全可以以EVMOS为中心构建一个生态。如果说Cosmos生态的共享安全是可选的， 则EVMOS的共享安全是默认配置。 

有一个明确使用场景是资产转换，即将现有的各类桥可以无缝的集成进来，毕竟EVM上的相关资产桥类型比较多。 

EVMOS上有一个项目其实也是一个近期关注的热点， 即**CEVMOS**， 在模块上它充当的是**结算层**，然后数据可用性和共识由Celestia负责。 基于CEVMOS上的链效果类似以太上的**Rollup**. 对于这种方案来说， 本质就是将主权退让，直接关注应用部分。 可以理解为是Celestia**模块化能力的延伸**。  

## 最后
这里放一些没有明确主题的感想。 

1、关于价值捕获。 

我想到这两句， ”**君子有所为有所不为**“， ”**水至清则无鱼**“。

前者说的是克制， 不要急功近利，有些事可以慢慢做，长远未必吃亏。ATOM本身对生态有影响， 但不是绝对影响， 换句话说， Cosmos去中心化狠起来可以Cosmos Hub都能拿掉， 你觉得什么样的架构才能Hold的住这种？请想象一下Cosmos生态， 可以是布衣， 也可以是君王，而且数量不限。  

你看ATOM比较克制， 但是Osmosis上的**OSMO就比较放肆**， 几乎无处不在价值捕获，哈哈。 

后者说的是， 该灵活的时候也要灵活， 比如共享安全其实就是对独立安全的再平衡。 有人说苦逼的ATOM终于被”赋能“了。 我觉得灵活拓展这块的变量其实蛮多的， 包括但不限于：消费链、CosmWasm、模块化。


2、开发者机会

强烈建议各个生态的开发者关注Cosmos生态，这是在半年前都被严重低估的地方，目前很多人还没有看清楚Cosmos的巨大潜力犹如宇宙洪荒之力， 这里刚刚起步， 需要的建设内容非常多， 无论是钱包、RPC节点、衍生品、数据Dashboard、NFT等各个领域都特别需要。 如前所述， 有IBC协议的无限扩展能力， Cosmos SDK提供的模块化开发能力， 技术栈的实用性， 各个方面开发者都可以很快启动一个项目并融入生态。 最重要的是， **Cosmos社区的文化**， 开放与包容。

也强烈建议你在推上关注tag标签 **#cosmos** ,当然也强烈建议关注**IBCL** https://twitter.com/ibc_league ,还有我: https://twitter.com/alexwanng (中文第一Cosmos脑残粉)。

友好的开发文档,评论赞不绝口: https://docs.cosmos.network/

## 参考资料
本文很多内容来自于社区交流以及twitter，如果有忘记标注出处的可以提醒我。
- https://cosmos.network/
- https://informal.systems/2021/11/25/interchain-security
- https://twitter.com/dYdX/status/1539607062291877889
- https://twitter.com/jaekwon/status/1520154232338272256
- https://mirror.xyz/huzhiwei.eth/HuqhbYKrlmfHSwPP-v-W_vV0AYphprtDQbcrF5CvlnM
- https://foresightnews.pro/article/detail/1836
- https://mp.weixin.qq.com/s/Lb13WYulnrKG1HqxlknWww


![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-12-080354.jpg)







