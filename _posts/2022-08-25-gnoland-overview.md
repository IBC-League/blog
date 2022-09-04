---
layout: post
title:  "Cosmos创始人回归第一个项目Gnoland概览"
date:   2022-08-25 14:15:31 +0800
categories: Gnoland Jae_Kwon
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---
1. Gnoland定位是**智能合约平台**， 和Juno、Agoric、CosmWasm有类似定位
2. 但是Gnoland选择了Go语言， 这一被Cosmos SDK以及Tendermint广泛使用并经受考验的语言， 并从中借用了Goroutine为智能合约带来并发能力， 并且**开发门槛更友好**， 相对Rust语言开发者数量更加广泛
3. Gnoland项目最大的特色是**proof of contribition, 即贡献证明**， Jae希望生态治理不是金钱说了算， 而是真正参与到生态并且为生态作出贡献的人， 包括但不限于: 代码、文档、社区反馈、各个领域的精英

<!--more-->

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-29-041914.jpg)

> 编者按:
> Gnoland是Cosmos创始人 Jae Kwon回归后的第一个项目， 本文部分内容结合在Space讨论的内容以及官方提供资料的整理以及部分思考， 供大家了解。 
> 对Gnoland在社区讨论的内容可以扫码上面海报了解。 

## 1/ What is gnoland
简单的说， Gnoland的定位是智能合约平台。

完整的说， Gnoland是Cosmos和Tendermint联合创始人 Jae Kwon在2020年创建的L1项目， 其目标是构建一个去中心化、安全可扩展的智能合约平台， 可以构建重要的应用， 尤其是可以抗审查。 

技术上说， Gnoland上的智能合约叫`Realms`， 使用的开发语言是`Gnolang`， gnolang是Golang语言的解释器， 开发者将Realm源码上传到链上，`GNoVM`虚拟机负责执行它的 `AST`(抽象语法树)解释。 

在上面描述中你看到一个Gnoland的智能合约特点是它的透明性， 即开发者不是上传的二进制的合约， **而是源码**， 然后由解释器负责解析执行。  这是Gnoland智能合约的一个特点。 

Gnoland智能合约还有另一个特点， 就是在智能合约里引入了多线程， 这样可以支持并发能力， 这个在技术上是由Goroutine这种轻量级线程实现的。 

Gnolang实际是Golang语言的一个子集，因此Gnoland的整体开发技术和Cosmos生态的核心技术是一致的，即Golang语言。 

而Golang语言在Cosmos生态已经被`Cosmos SDK`以及`Tendermint engine`完整的验证过，更重要的是， 由于Google的支持， Go语言的普及以及开发者数量众多， 从另一个层面为生态寻找更多开发者提供了有利条件。 

## 2/ Gnoland由来与69号提案
Gnoland被大众熟知首先是从一项Cosmos Hub上的提案引起的， 即**69号提案**。 

69号提案简单说， 就是CosmWasm智能合约希望集成到Cosmos Hub， 这个实际上是被不少人支持的， 理由也很充分， 给Cosmos Hub赋予更高的能力， 带来更多的使用场景， 最终也能为ATOM带来价值捕获。 

Cosmos生态的创始人Jae Kwon第一个强烈反对， 甚至警告如果Cosmos生态通过了69提案他将建议社区**分叉Cosmos Hub**，可见反对的激烈程度。 

有人批评Jae， 认为他是为了自己的项目也是智能合约的定位， 所以强烈反对CosmWasm部署到Cosmos Hub。 不过这一点有点立不住脚， 因为Jae对CosmWasm的评价早在几年前就有明确的说明， 参考 [The Shape of Cosmos#smart-contracts](https://github.com/jaekwon/cosmos_roadmap/tree/master/shape_of_cosmos#smart-contracts "The Shape of Cosmos#smart-contracts")

Jae的理由是， Cosmos Hub应当遵循一个原则， 即Hub最小化， 即作为Cosmos Hub不应该有太多扩展的功能， 而是将扩展的能力放到其他的zone去完成， 这也符合去中心化的理念； 同时， 更重要的一点是， 集成新的功能， 会带来**安全隐患**。 而CosmWasm最大的问题是还没有经历时间的考验， 在没有发展成熟之前总会经历恶意攻击的问题， 这将对Cosmos Hub形成致命的威胁。 

这个担忧也并非空穴来分， 在之前Juno网络就因为CosmWasm问题出现停机的情况， 所以Jae反对CosmWasm集成在Cosmos Hub。 

当然， Jae是大棒与胡萝卜并举， 在反对的同时也明确， 凡是反对69号提案的将有机会获得Gnoland项目的**空投**。 

如他所愿， 最终69号提案被否决。 

从某个角度说可以认为CosmWasm和Gnoland也是一个并列或者竞争的关系， 即CosmWasm和GnoVM层面。 

回到Why Gnoland这个问题， 答案是， Jae认为现有的基于Cosmos SDK来开发应用链的难度还是偏大， 从0到1开发需要兼顾很多的方面， 比如网络安全， 治理等等。 而Gnoland就是为了**降低开发门槛**。 

Gnoland的降低开发门槛一个是将应用链的开发转为智能合约的开发； 另一个是开发工具上选择Gnolang这个基于Go这样一门更广泛使用的被Google支持的语言。 

如果说降低开发门槛角度， 和Gnoland有类似定位的其实还挺多的， 除了基于智能合约的类似Juno这样的项目， 还有**Evmos**也是着力于降低开发门槛以及寻找更多的开发者支持。  这一点来说， Gnoland还是有自己的挑战需要面对的。 

## 3/ Gnoland背后的组织
Gnoland背后的组织变化目前还是挺大的， 牵扯到Jae Kwon以及Ignite。 

最早在peng zong在的时候， Ignite从NewTendermint独立开。 

最新情况是Ignite分为4个实体：

1、AiB作为母公司， 共享相关资源给其他实体

2、原先的Ignite专注在Ignite CLI工具端的开发（Ignite CLI原先是starport）， 另外Ignite 加速器也在Ignite名下。

3、**NewTendermint**负责开发**Tendermint2.0**和Gnoland以及Cosmos SDK。 
这里需要注意一下的是Tendermint2.0其实可以理解为原来Tendermint的一个分支， 具体名字是`Tendermint Classic`， 我看到github上的代码是2年前就有了。 Jae的想法应该是对原来的做一些简化， 不过简化之后两者之间的兼容性如何目前没有公开资料。 

4、新成立的一个实体是Anamika， 负责开发Cosmos Cash， 这是一个和合规相关的内容， 是一个Cosmos SDK模块。 

官方解释这次变化主要是熊市大背景下的一个例行收缩，以及将重点瞄准重点内容，提升效率。 

而Gnoland即是由AiB下面的**NewTendermint**负责开发。 

更多组织相关内容请参考: [Ignite becomes independent entity alongside NewTendermint](https://ignite.com/press/Ignite-becomes-independent-entity-alongside-NewTendermint "Ignite becomes independent entity alongside NewTendermint") 以及[Ignite: Growing the Cosmos Ecosystem Since 2014](https://ignite.com/blog/ignite-growing-cosmos-ecosystem-since-2014 "Ignite: Growing the Cosmos Ecosystem Since 2014")


## 4/ proof of contribution, 基于贡献证明
Gnoland项目除了其定位之外， 我觉得最大的特点可能是它的治理方式， 甚至比较的极端。 

Jae似乎并不希望有钱的资本能够直接进到Gnoland生态里参与治理或者成为验证人。 要成为Gnoland的决策者和参与者， 你需要在日常中用自己的“忠心”与“行动“来体现， 有点像PoW的工作量证明机制。 

> I also want validators to be chosen based on an on-chain mechanism based on their contribution, not an economic system. I’m also considering limiting validators on Gnoland to only validate the Cosmos Hub and Gnoland.
--- Jae Jwon

在一次访谈中Jae提到， ”我希望验证人的链上机制是基于他们的贡献， 而不是经济系统， 同时希望验证人专注在Cosmos Hub和Gnoland“，见: [Highlights from Jae’s Interview on Cryptocito](https://medium.com/onbloc/highlights-from-jaes-interview-on-cryptocito-6f35c495a73d "Highlights from Jae’s Interview on Cryptocito")

这里可以感受到Jae的**理想主义**。 治理过程一直是人们讨论的焦点， 始终围绕公平与效率， 参考各个模型，在中心化与去中心化之间权衡，  但是最终还是token说了算， 而这些token是可以购买的， 所以说本质就是金钱游戏也没毛病。 对于理想主义者可能总希望改变一些自己看不过去的内容， 从这一点Jae的尝试值得掌声。 

Gnoland希望通过使用**两个token**将参与治理的人和参与投资的人分开， 治理的人是那些开发者、社区贡献、生态的dapp， 是生态日常关注且参与的人。 

当然， 这一点也是有点与现实世界格格不入， 可能会碰到很多的问题， 比如治理代币如果可以交易本质上也是回到金融层面。  另外一点， 做验证人节点其实是一个**专业领域**，维护与安全问题需要专业人员，  而Gnoland里的很多有贡献的人未必是这方面的专业人士， 这个可能对后面的节点安全也是一个需要考虑的问题。 


## 5/ 双代币模型

Gnoland的是双token经济模型,主token是 $GNOT(Gno token), 其用途是作为费用来支付交易费以及给验证人的奖励。

第二个token是 GNOSH(Gno shares)可以理解为股权， 主要是用于奖励贡献， 贡献使用的机制叫 Proof of Contribution, 具体规则在制定之中。 赚取 GNOSH的方式简单理解就是做任务， 各种bounty.  

你持有的GNOSH数量越多, 在贡献者池中的份额越大。 这是一个通胀模型， 随着每次增发奖励给新的用户GNOSH, 你持有的GNOSH份额也会被稀释。 

GNOT创世阶段发布一次性发布10亿，总量固定。 

其中7.5亿空头给ATOM 的持有者和质押者， 其绝大部分是为69号提案投否决的用户，没有参与投票或者投YES的用户将获得极少的份额； 
1个亿的GNOT是分配给 New Tendermint公司以及 Jae Kwon个人；

1个亿的 $GNOT分配给一个为社区管理和生态服务的DAO， 该DAO的名字叫 Core Mission DAO, 具体还没有敲定.

5千万的GNOT将分配给早期Github代码贡献者以及早期生态贡献者， 包括test1测试网的1万个和test2测试网的10万GNOT， 以及2个水龙头发放2百万GNOT。 

## 6/ 生态应用

Gnoland的现状像一个正在施工的工地。 官网非常简陋。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-29-041243.jpg)

简陋的原因是这个网站就是用后端语言Go实现的，都没有用前端框架React这种， 所以看起来非常的极客也就不奇怪了。 

换一个角度看， 他们重心目前不在这里， 而是开发本身。 网页上的一些功能就是为了让开发者参与智能合约交互使用的。 

生态目前重点有两个项目， 一个是Onbloc团队的Adena 钱包， 另一个是Teritori多链dapp。

Adena的定位是Gnoland的旗舰钱包，开发团队认为现有的Keplr钱包主要目标场景是IBC转账和多链场景做了优化，但是也有不足。 比如目前的Keplr钱包不支持智能合约的token导入， 也不直接支持NFT。 而Adena钱包将会集成这些， 承诺会和Paypal支付一样方便。 

在Chrome浏览器安装体验效果图如下：

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-29-041306.jpg)

作为一个项目需要一个独立的钱包是可以理解的， 不过现阶段Cosmos生态对Keplr钱包的使用还是比较深入人心， 我个人建议项目方可以在主要场景上能在Keplr上得到满足， 部分优化的功能在Adena上来操作可能比较稳妥， 这样主流用户不需要切换钱包就能体验新项目， 同时对于深度用户来说可以体验专有功能， 也不介意安装新钱包。 理论上， 所有的功能都可以在web的一个dashboard里来实现。 

Onbloc团队还有另外两个应用， 一个是Terabyte Validator，还有一个是Gnoswap DEX应用，目前还在早期。 

另一个是Teritori的多链应用， 这个应用定位是成为web3世界的Dapp枢纽， 为个人、社区和开发者提供一些列工具， 包括DAO的增强等。 关注去中心化、抗审查以及声誉、透明度等基本价值观。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-29-041328.jpg)

虽然其具体做什么还有点模糊， 不过Jae看起来对他们还比较有兴趣， 已经参与他们项目做相关咨询， 目前正在推动这个项目的开发。目前在测试网V2阶段。 


## 7/ 路线图

Gnoland的路线图像程序员写的， 所以没有豪言壮语，基本就是按照测试网1，测试网2，测试网3来区分，看起来确实不会让人有激动人心的感觉， 不过也算是**工程师文化**的一种。 

目前第一阶段已经完成，即测试网1， test1是构建在单一节点上， 目前已经放弃。 

目前正在进行中的阶段是第二阶段，包括 $GNOT代币分发以及  `ugnot` 计量单位。 目前第二阶段的重心还包括 `/r/boards`  这个Realm即智能合约的优化。

这一阶段的Realm也会包含一些Ream的参考样例， 以便让开发者参与一些Bounty，更好的了解与智能合约的互动。  以及， 一些开发者和用户相关的文档。 

第三阶段仍然是一个测试网， 是 `test3.gno.land`, 会引入活跃验证人集， 相关的技术和治理决策在这一阶段是重点内容， 为下一阶段进入主网。

Gnoland的验证人数量将有一个突破， **计划是334个**， 对比Cosmos Hub的验证人目前是175个， Evmos验证人是150个， 可以看出Gnoland是希望将去中心化程度在验证人上就能体现更明确一些。 

具体什么时间进入主网目前还没有明确， 不过社区部分讨论暗示大约是**23年底**左右。 

第四阶段可以理解为社区化， 即项目的长期规划是一个DAO来负责， 名字叫 **Core Mission DAO**

更详细的路线图可以参考 [What is Gno?](https://gnoland.space/docs/what-is-gno "What is Gno?") 和 Github上的 [Roadmap.md](https://github.com/gnolang/gno/blob/master/ROADMAP.md "Roadmap.md")

## 8/ 小结
Gnoland项目从69号提案的争论开启， 结合Cosmos创始人的光环， 很难让大家不关注这个项目。 

Gnoland项目定位是智能合约平台， 并且是基于Go这样一个在各个方面trade off更友好的语言来实现支持并发能力的智能合约， 在Rust、Move、CosmWasm以及Solidity构建的众多平台中另立门户， 是否能证明只有时间知道。 

大规模的空投（7.5亿空投给ATOM持有者）以及334个节点， 都让人感受到Gnoland去中心化的努力与决心。 

而Proof of contribution的贡献证明， 我们看到了Jae的斗志， 希望彻底改写资本说了算的传统老路， 让生态参与者成为真正的受益者， 而不是旁观者。 这件事从一开始就意味着不会容易， 仍然需要时间去证明。 

目前创始人的开发能力是不用质疑的， 无论是早期的Tendermint还是Cosmos SDK Jae都是重要的Contributor, 更不用说目前Gnoland的头号开发者也是Jae。 

未来如何让重视用户体验的人以及市场的人加入团队，和Jae一起完成使命是一个需要团队推动的重要事项。 

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-104758.jpg)