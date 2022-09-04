---
layout: post
title:  "Bankless: 以太坊对战Cosmos"
date:   2022-07-19 14:15:31 +0800
categories: Cosmos Ethereum Bankless
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---

1. 作者对Cosmos的理解侧重在于消费链的个性化以及staking这一层面， 对IBC的价值，以及基于此的互操作性阐述较少。
2. 不过， 将L2和模块化作为一个对比的视角很好， 这也是未来Cosmos一个变量的部分， 而这个故事其实还没有开始。 现在刚开始的部分其实是IBC以及基于此之上的一系列互操作的故事（**跨链安全、跨链帐户、跨链查询、智能合约、消费链**）。 
3. 一个有意思的观察是， 由于Cosmos的治理更多是线上token实时治理升级， 作者认为这个带来更大的风险。
<!--more-->

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-092610.jpg)





## 正文

单体区块链在过去还是可以一用的。

但是有一个问题，就是在一个节点中需要做所有的事情，比如共识、数据可用性、结算以及执行， 很难权衡区块链的三难困境。

想要安全且去中心化？ 需要适应慢速。 安全且快速？ 去中心化就不能保障。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-161740.png)

[模块化区块链](https://shows.banklesshq.com/p/modular-vs-monolithic-blockchains "模块化区块链") 通过将不同角色进行分层来绕开这个问题。

从而达到不用再权衡上述三个元素直接做到可扩展性。

在这场模块化竞赛中领先的是以太坊和Cosmos.

Ben 打破了二者的关键差异。

**— Bankless Team**

区块链的未来是 [模块化](https://newsletter.banklesshq.com/p/ultra-scalable-ethereum "模块化").

用户和新玩家已经了解到， 在2021年的牛市期间，无论是天价GAS费，还是拥堵与稳定性问题都说明， 单体区块链已经不适应少数精英，更不用说全世界数十亿人的需求了。

值得庆幸的是，许多具有前瞻性的开发者早就预见到了这些挑战，致力于执行能够创建模块化区块链网络的路线图，其中最突出的两个是以太坊和Cosmos。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-161814.jpg)

以太坊和Cosmos已经存在了一段时间，相对基层和分散，与其他生态系统相比，风险投资家和投资者的影响力要小得多。两者都在构建这种模块化未来的相似但又不同的愿景。

以太坊的rollup方案里借助二层(L2)的组合来扩展一个单一但高度去中心化的结算层来实现。

另一方面， Cosmos正视图构建一个“区块链互联网”， 或一个具有互操作性和主权的应用链。



![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-092655.png)以太坊 L2 TVL - 来源: [DeFi Llama](https://defillama.com/chains/Rollup "DeFi Llama")

这两个生态系统都处于早期阶段。以太坊L2占DeFi总TVL的1.58%，而Cosmos链的份额为0.82%。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-092658.png)Cosmos生态 TVL - 来源: [DeFi Llama](https://defillama.com/chains/Cosmos "DeFi Llama")

但是竞争趋于加热， 近期以太坊L2上的领先订单簿应用[dYdX官宣](https://newsletter.banklesshq.com/p/why-would-a-dapp-leave-ethereum-right "dYdX官宣") 他们将在Cosmos上构建自己的V4主权链。

这就提出了一个问题......这些生态系统是互补的还是竞争的？

各自提供了哪些对方不提供的东西？

让我们看看我们是否可以通过比较每个生态系统的技术能力，以及它们作为可信的中立结算层的能力来回答这些问题。

## 技术能力

让我们从探索以太坊 L2 和 Cosmos 的一些设计特征开始，以更好地了解各自的优缺点。

### 以太坊L2的能力

L2使用以太坊作为共识和数据可用性，将执行部分在链下，即rollup环境。 之后Rollup将相关数据批量压缩处理，提交交易证明到L1，借此方式实现费用在L2用户摊销间接降低总体费用。

这使得以太坊可以通过在相同数量的区块空间中容纳更多的交易来进行扩展，使网络能够在保持经济可持续发展和最大程度的去中心化的同时进行扩展，因为用户仍然可以轻松地运行一个节点来验证链的状态。

有两种该类型的L2，一种是使用欺诈证明的Optimistic Rollups,另一个是使用有效性证明的zkRollups。 zkRollups相比有更好的性能， 但是在生产中实现还有挑战， 且缺乏EVM兼容性，这意味着[后者更有可能成为以太坊在可预见的未来的主要扩展解决方案](https://vitalik.ca/general/2021/01/05/rollup.html "后者更有可能成为以太坊在可预见的未来的主要扩展解决方案")。

尽管如此，在L1和L2层面上都有许多扩展解决方案，如call-data数据压缩、proto-danksharding和EIP-4488。此外，通过L3的 fractal扩展，也就是结算到L2的Rollup而不是直接到L1，将进一步提高可扩展性，并可以为特定应用的Rollup开辟新的设计空间。

L2还提供了相当程度的可组合性，因为诸如Optimism和Arbiturm这样的通用rollup都拥有一个庞大且快速增长的协议和应用生态系统。这种可组合性有望在未来通过采用[通用的消息传递协议（如Layer 0和Nomad](https://cryptoexplainere60.substack.com/p/thoughts-on-interoperability "通用的消息传递协议（如Layer 0和Nomad")）而得到加强，这些协议增加了rollup之间的互操作性，尽管会引入新的风险和信任假设。

### Cosmos链的能力

Cosmos非常适用于构建特定应用的区块链，或称应用链。这些是为运行单一应用而优化的链，比如像Osmosis这样的交易所，TVL最大的Cosmos链，以及前面提到的[dYdX链](https://newsletter.banklesshq.com/p/why-would-a-dapp-leave-ethereum-right "dYdX链")。

这是通过Cosmos SDK实现的，这是一个区块链开发框架，允许开发者对其设计进行近乎完全的控制。正因为如此，Cosmos链被认为是具有主权的。

例如，[构建者可以选择他们的链是否会使用账户或UTXO模型，状态机将以何种语言构建，以及其他各种参数](https://docs.cosmos.network/main/intro/why-app-specific.html#performance "构建者可以选择他们的链是否会使用账户或UTXO模型，状态机将以何种语言构建，以及其他各种参数")。与以太坊等网络相比，这要灵活得多，因为以太坊的这些参数已经设置好了，所有开发者都必须遵守。

Cosmos增加的可定制性也延伸到了治理和安全方面，因为每个链都可以启动他们自己的独立验证人，大约从2022年第三季度开始，利用一个称为跨链安全的功能，像以太坊和L2一样，这将使链可以将他们的验证人外包给其他网络，如Cosmos Hub。跨链安全可能被证明是Cosmos链的一个关键功能，因为启动验证人是困难的，并且可能导致安全性降低导致网络攻击。

Cosmos链之间可以借助IBC跨链协议获得本地互操作性能力。 当前网络里已经启用了 [轻客户端来构建最小化信任桥和消息传递](https://cryptoexplainere60.substack.com/p/thoughts-on-interoperability "轻客户端来构建最小化信任桥和消息传递")。

另一个近期部署的升级功能是[跨链帐户](https://ibc.cosmos.network/main/apps/interchain-accounts/overview.html "跨链帐户")，允许在IBC兼容的链上发生直接交易， 即跨链的应用之间可以借此标准实现更小粒度的互操作， 从而大大提升用户体验。

### 小结

以太坊L2和Cosmos都带来了巨大的价值。以太坊L2实现了具有最高安全级别的低成本应用，而Cosmos目前为独立应用提供了更大程度的可定制性、互操作性和主权。

## 以太坊与Cosmos Hub作为结算层的对比

我们可以看到，以太坊和Cosmos都计划利用某种形式的共享安全。以太坊L1将作为rollup的结算层，而Cosmos Hub可以为使用跨链安全的消费链提供类似作用。

让我们看看各自在这方面的表现。

### 以太坊L1

目前有超过1301万个ETH（按当前价格计算约136.7亿美元）抵押在信标链上，这将是以太坊从PoW合并到PoS后的主链。这使得审查交易和重组链的成本分别为45.1亿和91.5亿美元，这些攻击需要占用总金额的⅓和⅔。

信标链目前有404,125个验证人，每个节点需要存入32ETH（约33,632美元），这是参与共识和赚取staking奖励和交易费用所需的门槛。虽然没有给出具体数字，但根据以太坊基金会研究人员的说法，理论上最大的验证者数量约为~400万。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-092700.png) 信标链上抵押的ETH - 来源: [Beaconchain.in](https://beaconcha.in/ "Beaconchain.in")

以太坊没有采用本地staking授权作为一种方式来解决运行验证器的高成本，而是通过开放市场实现staking奖励的民主化。这可以通过像Kraken这样的托管交易所，或像Lido这样的非托管服务机构发行流动性的staking衍生品。

然而流动性staking的衍生品具有强大的网络效应，已经让Lido这样的实体积聚大量的份额[目前持有信标链的31.7%](https://etherscan.io/dashboards/beacon-depositors "目前持有信标链的31.7%"). 上线后staking是否会变得更加广泛分布，还有待观察。

尽管如此，由于以太坊缺乏链上治理，Lido以及Lido的Holder的直接影响是有限的。

以太坊不是通过token持有者投票来决定网络的变化，而是通过粗略的共识来管理链下的网络。这意味着网络的所有利益相关者，如核心和应用开发者、用户和ETH持有者，必须加入进来以进行重大升级。这将治理权力分散到更广泛的群体中，通过限制财阀出现的可能性，提高了以太坊的可信中立性。

### Cosmos Hub

目前有1.8999亿ATOM，价值约14.8亿美元，被押在Cosmos Hub上。这意味着，要达到停止或重组链所需的⅓和⅔阈值，分别需要花费约4.839亿美元和约9.368亿美元。

Cosmos Hub有175个活跃的验证人，这是通过治理设定的最大上限。该网络确实采用了委托权益证明(DPOS) (译者注： 应该是BPoS），token持有者可以将其权益委托给这些验证人之一，以赚取与保护网络相关的回报。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-092702.png)Cosmos验证人staking比例 - 来源: Mintscan

尽管有上限的验证人和DPOS的使用，Staking似乎比以太坊更广泛的分部。在Cosmos Hub上，有7个和23个实体控制着⅓和⅔的份额，而在以太坊上，这个数字较低，分别为2个和16个。

虽然Cosmos的Staking更加分散，但由于使用链上的、基于代币的治理，权力集中在Cosmos Hub的验证人手中的风险更大。这增加了大户在链上施加其意志的能力，强行通过可能没有得到生态系统内所有利益相关者批准的提案，反过来威胁到Cosmos Hub的可信的中立性。

### 小结:

正如我们所看到的，以太坊 L1比Cosmos Hub更安全，并且拥有更多和更开放的验证人组合。尽管Cosmos Hub的staking分布更广，但相对于以太坊，链上治理的存在使代币持有者和验证者手中的权力大得多。

## 他们是竞争者吗?

正如我们所看到的，以太坊和Cosmos都在朝着类似的愿景发展。虽然以太坊提供了更高的安全级别和更可信的中立结算层，但Cosmos链更加灵活，可互操作，并为一些使用场景进行了优化。

虽然最大的生态系统只能有一个赢家，但随着数十亿的用户和数万亿的资本将将被纳入Web3，似乎以太坊和Cosmos最终可能会成为互补的，服务于不同的使用案例，而不是直接的竞争对手。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-07-18-161952.jpg)

归根结底，与任何系统一样，这都需要权衡。

你会选择哪个？