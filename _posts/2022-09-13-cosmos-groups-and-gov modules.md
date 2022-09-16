---
layout: post
title:  "Cosmos SDK升级: Groups模块支持多签; 治理方式升级支持个性化需求"
date:   2022-09-13` 14:15:31 +0800
categories: Cosmos
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---

1. Groups 是一个提供多签的模块， 支持动态密钥轮换等功能
2. 开发者可以基于Groups开发各种改进的钱包， 比如两阶段验证等
3. 新的治理模块实现了更灵活的需求， 比如大金额的高门槛， 小金额的低门槛等
<!--more-->


> 本文编译自 [Secret Powers: What Do the Upcoming Groups and Gov Modules Enable?](https://blog.cosmos.network/secret-powers-what-do-the-upcoming-groups-and-gov-modules-enable-964a22f0a9cd "Secret Powers: What Do the Upcoming Groups and Gov Modules Enable?")

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-09-13-042432.png)

Cosmos 是基于模块化方式构建的。多年来，Cosmos SDK 以模块化的方式引入了很多强大的功能，可以让开发者直接使用。这也是应用链的特色：我们希望开发人员专注于构建他们的应用程序，以最少的工作量来启动一条链。

正是这些模块让Cosmos SDK成为脱颖而出的**秘密力量**。[之前的一篇博客](https://blog.cosmos.network/secret-powers-what-are-the-authz-and-fee-grant-modules-c57d0e808794 "之前的一篇博客")（本系列的第一篇）涵盖了 **Authz** 和 **Fee Grant**，随着 Cosmos SDK 已经发布了 0.46 最新版，我们认为这是向你介绍新的**Groups 模块**的好时机，当然还有提升的 **治理模块**。 

## Cosmos SDK 的Groups模块

Groups是干什么的？本质上，Groups 模块是steroids上的 Multisig（多签）。Cosmos SDK 从一开始就支持[多签名钱包](https://docs.cosmos.network/master/run-node/txs.html "多签名钱包")，但门槛阻碍了它的广泛采用。

有一些不足，比如签名不会存储在链上，因此你必须手动将已签名的交易发送给所有成员。此外，没有动态密钥轮换，因此如果你想更改成员，你必须创建一个新的多重签名，并将你的资金转移到该帐户。

基于改进的需求，引入了 **Groups** 模块，为基于 Cosmos SDK 构建的区块链提供高级版本的多签钱包支持。作为第一个也是显而易见的用例，这将基金更容易管理他们的token。同时为开发人员带来了新的机会， 他们可以基于Groups为钱包开发各种可用性改进， 例如**两阶段身份验证**等。 

## Groups模块如何工作？

首先，小组成员对提案进行投票。 提案可以是链支持的一条或多条的任意消息，例如抵押代币、发送 IBC 转账和对治理进行投票。Groups的成员可以通过提案进行更改，或者由Group选定的管理员进行更改。 

此外，Groups支持多决策的策略。一个决策策略是一组标准，用于确定提案何时通过或失败。例如，你可以有一个阈值决策策略，规定 5 名成员中有 3 名需要在 5 天内投赞成票才能通过提案。这里的秘密力量在于持有代币的不是Groups，而是**决策策略本身**。为什么这很重要？

假设你是一个资助开发工作的DAO的成员。你可能想为已经完成的工作支付一笔相对较大的代币。在这种情况下，你想确保你的团体中的大多数人批准付款，并且有足够的时间让每个人投票，因为你要处理的是一大笔钱。

另一种情形就不同了，比如你有一台笔记本电脑坏了，你需要资金来迅速更换机器。如果投票期为15天，并且要求10人中有7人是多数，那就很难做到了。

当你有多个决策策略时，你可以通过严格的策略来保护你的大资金，并允许在短时间内以较小的门槛访问较小的资金。这种灵活性使 DAO 在适当的时候能够**更快地响应**或者更安全。选择权在你。

[ICF基金会](https://interchain.io/ "Interchain 基金会")目前正在资助 Regen Network 为 Groups 构建前端界面，但与此同时，你可以在[Developer Portal](https://tutorials.cosmos.network/tutorials/understanding-group/ "Developer Portal")上学习使用该模块。

## 新改进的治理模块

Cosmos 链的一大特色是它们默认带有链上治理系统。任何参与了staking的人都可以投出自己的选票， 来决定参数更改或软件升级。此外，委托人可以对signal proposals进行投票，以及决定如何使用社区池中的资金。这种链上治理系统在过去实现了巨大的社区参与，但迄今为止**仅限于这四种类型的提案**。

随着 IBC 的成功，Cosmos 生态系统变得更具互操作性，现在[**跨链账户**](https://blog.cosmos.network/interchain-accounts-take-cosmos-interoperability-to-the-next-level-39c9a8aad4ad "**账户**")开始在链上普及，**可组合性**正在迅速的加速。一条链现在能够在其他链上创建地址并在本地执行交易。这允许应用之间的可组合性，类似于像单片链以太坊这样的上的智能合约的互操作能力。

治理是如何发挥作用的？

几乎所有使用 Cosmos 构建的区块链都有一个社区池。这是一个去中心化基金，可以获得一定比例的区块奖励，并不断保持规模的增长。到目前为止，社区资金池已被用于资助公益工作、[Cosmoverse](https://www.mintscan.io/cosmos/proposals/68 "Cosmoverse")等会议以及最近的[ HackATOM Seoul 2022](https://www.mintscan.io/cosmos/proposals/74 " HackATOM Seoul 2022")，但该基金还有更多机会参与更广泛的生态系统。

有什么变化？新的治理模块不再是以前默认的四种提案类型，而是允许人们提议执行链上支持的任何数量的任意信息，类似于Groups模块的功能。

例如，一个链上的社区池可以将代币发送到一个去中心化的交易所，交换代币以创造一个更广泛的接触Cosmos生态系统的机会，或在链上购买碳信用以抵消应用的碳输出。在其核心，治理模块的扩展允许区块链的社区以以前无法想象的方式与其他链互动。

我们鼓励开发人员查看此[模块的规范](https://docs.cosmos.network/v0.46/modules/gov/ "模块规范")，以详细了解这可能对其区块链或客户端产生的潜在影响。

通过 Groups、Governance 以及之前的 Auth 和 Authz 模块的紧密集成，Cosmos SDK 正在构建类似于 Linux 权限系统的能力，这是 Cosmos 内核的核心原语。当与跨链帐户结合时，这可以实现强大的远程帐户访问，与 SSH 非常相似。

## Groups和治理

从某种意义上说，Groups和治理模块是**同一枚硬币的两个面**。你可以想象一个链的所有委托人默认都是社区Groups的成员，因为这两个模块之间的提案和投票功能几乎相同。

我们很高兴看到新功能将带你走的更远。我们希望链上的人都渴望采用新的模块，令人兴奋的新前端应用程序将会出现，并且痛苦的多重签名管理很快将成为过去。

我们要感谢[Regen Network](https://www.regen.network/ "Regen Network")对这些功能的设计和工程工作所做的贡献。



*关于作者*

NoamCohen在[Interchain GmbH](https://www.interchain.berlin/ "Interchain GmbH")工作，是 Cosmos Hub 团队的开发者关系主管。[Noam推特](https://twitter.com/Gnomeskiii "Noam推特")。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-104758.jpg)

