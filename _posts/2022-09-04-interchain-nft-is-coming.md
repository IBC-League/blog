---
layout: post
title:  "跨链NFT即将登陆Cosmos"
date:   2022-09-02 14:15:31 +0800
categories: NFT
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---

1. 跨链NFT兼容ERC721规范，满足NFT创建、更新、转移、批量操作等系列技术规范
2. 跨链NFT可以让NFT脱离单链运行， 为Cosmos生态带来更好的可组合性。
3. 跨链NFT由边界智能开发， 并获得ICF基金会支持。


<!--more-->

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-09-02-063550.jpg)

这篇文章介绍了[跨链NFT 转移](https://github.com/cosmos/ibc/blob/main/spec/app/ics-721-nft-transfer/README.md "跨链NFT 转移")，它将 NFT 功能带入[Cosmos](https://cosmos.network/ "Cosmos") ，促进互操作性并扩展 IBC（[跨链通信协议](https://ibcprotocol.org/ "跨链通信协议")）的功能。



## 什么是跨链NFT转移？

非同质化代币 (NFT) 改变了我们生产、分销、交易和宣传艺术、电影和音乐等品牌商品的方式，吸引了各行业以及Cosmos生态系统内的利益相关者的关注。

跨链NFT传输功能由[边界智能](https://blog.cosmos.network/interchain-grantee-spotlight-how-bianjie-is-helping-to-grow-the-cosmos-ecosystem-44a5a75eb63b "边界智能")([Cosmos网络](https://cosmos.network/ "Cosmos网络")和[IRISnet](https://irisnet.org/ "IRISnet")长期贡献者)开发, 并获得[ICF基金会](https://interchain.io/ "ICF基金会")支持， 在[ NFT模块](https://github.com/cosmos/cosmos-sdk/blob/main/docs/architecture/adr-043-nft-module.md " NFT模块")和[ICS721(Interchain Standard-721)标准](https://github.com/haifengxi/ibc/tree/nft-transfer/spec/app/ics-721-nft-transfer "ICS721(Interchain Standard-721)标准")中启用。

**NFT 模块 (x/nft)** 是一个 Cosmos 风格的原生模块，可进行与 NFT 相关的查询并构建 NFT 应用程序。开源 NFT 模块的原始版本被包括 IRISnet 和 Crypto.org 在内的 Cosmos 链采用，以创建各自的NFT 市场。鉴于生态系统的这些积极成果，该模块进一步改进了其设计，并包含在 Cosmos SDK 中，具有更好的功能和对 IBC 协议的支持。

该模块兼容 ERC721 规范，具有 NFT 创建和更新、所有权跟踪和转移、批量操作等功能——完整的技术规范可以在[这里](https://docs.cosmos.network/master/modules/nft/# "这里")找到。

**跨链标准（ICS-721）** 是一个应用层协议，允许支持IBC的链（包括同质和异质）之间的跨链NFT互操作。该标准设计了数据包结构、状态机处理逻辑和编码细节，用于不同链上的两个x/nft模块之间通过IBC通道进行NFT传输。为了使该标准更加安全、兼容和通用，其功能考虑了智能合约、元数据可变性和批量传输。

通过这个标准，资产的不可伪造性和所有权可以得到保留，拜占庭故障的影响可以得到限制，而且不需要额外的许可。更多技术文件，请参考[ICS-721规范](https://github.com/haifengxi/ibc/tree/nft-transfer/spec/app/ics-721-nft-transfer "ICS-721规范")、[实现](https://github.com/bianjieai/ibc-go/tree/develop/modules/apps/nft-transfer "实现")和[demo](https://github.com/bianjieai/ics721-demo "demo")。

## 为什么我们需要跨链NFT?

尽管目前NFT交易量低迷，但一些顶级NFT藏品的底价实际上已经攀升，例如[CryptoPunk 4464以260万美元售出](https://twitter.com/cryptopunksbot/status/1546998994638979074?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1546998994638979074%7Ctwgr%5E609d28cddf02584de65170aadd46153c56e78e6b%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcointelegraph.com%2Fnews%2Fcryptopunk-sells-for-2-6m-as-big-nft-brand-floor-prices-increase "CryptoPunk 4464以260万美元售出")。此外，[SkyQuest最近的一份报告](https://tinyurl.com/2dqmzmpx "SkyQuest最近的一份报告")显示，到2028年，NFT交易量预计将达到1224.3亿美元，而2021年为157亿美元。

然而，与同质化代币类似，如果NFT只是在一个区块链上交易，那么NFT市场的交易数量和规模将受到限制。为了弥补这一点，并推动NFT到一个新的台阶，需要高度的连接性和互操作性。这正式跨链NFT大展拳脚的地方。

**对于IBC用户来说**，NFT为他们提供了对其独特资产的所有权和主权，而Interchain NFT使他们能够更灵活地在不断扩大的可互操作的Cosmos生态系统中使用其资产。

目前，NFT在某种程度上是分散的，被隔离在特定的链上，NFT卖家或收藏家必须在这些链上来回切换。跨链NFTs使得在A链上发行NFTs并通过IBC将其发送到B链上出售成为可能，同时保留了资产所有权和来源。用户因此可以获得B链上的额外功能，如交易、版权费支付或隐私保护。

**对于dApp开发者来说**，NFT应用往往像NFT一样建立在特定的链上，如Flow上的*NBA Top Shot*或Crypto.org链上的*Crypto.com NFT*。覆盖更广泛的用户对任何平台来说都是至关重要的，而实现这一目标的一个常见做法是多链部署。其中一个例子是最近[将基于Solana的*Magic Eden*扩展到Ethereum](https://www.coindesk.com/business/2022/08/03/nft-exchange-magic-eden-expands-to-ethereum/ "将基于Solana的*Magic Eden*扩展到Ethereum")。

跨链NFT开辟了通过IBC将用户群扩展到其他网络的可能性，使NFT平台获得更多曝光。同时，开发者可以利用多链的优势，通过应用程序之间的连接为自己的服务提供动力，也可以与其他空间的应用合作，如metaverse和GameFi，为其应用注入能量。

**对于IBCgang**来说，跨链NFT提供了关于Cosmos NFT标准化的缺失部分，并扩展了IBC协议的能力。通过采用NFT模块和启用Interchain NFTs，IBCgang可以从扩大网络和加强互连中获益。

新的面向NFT的开发者可能会被吸引参与，并将他们的项目搭载到跨链网络。同时，来自IBCgang网络的原始开发者在升级其产品时有更多的功能选择。所有这些NFT项目都有能力通过IBC相互交流，增加了IBCgang网络的活动量，使Interchain生态系统更具可扩展性。

此外，跨链NFT鼓励采用跨链堆栈，并带回满足商业需求和服务实体经济的用例。例子包括[第一个艺术品NFT](https://blog.cosmos.network/nfts-travel-from-wenchang-chain-to-ethereum-for-the-first-time-through-ibcgang-member-irisnet-8b86490c5e45 "第一个艺术品NFT")从基于Cosmos技术的文昌链到以太坊，以及La Prairie使用Cosmos底层技术在旅游零售业推出其第一个[NFT数字营销活动](https://www.trbusiness.com/regional-news/asia-pacific/la-prairie-launches-its-first-nfts-in-travel-retail-at-hainan/218786 "NFT数字营销活动")。作为元宇宙的技术基石，该功能能够支持价值所有权认证、价值流通和Web3中的身份识别。

简而言之，跨链NFT将为用户提供更丰富的跨链体验，为开发者和网络增加机会，催生更多的商业用例，重要的是为链间生态系统获取更多的价值，从而使我们离区块链互联网又近了一步。

![](https://alextencentcos-1256436283.file.myqcloud.com/roam/2022-08-02-104758.jpg)