---
layout: post
title:  "demo avatar"
date:   2022-09-04 17:41:22 +0800
categories: 
author: 红军大叔
show_excerpt: true
links:
    - name: 链接1
      link: 'https://jekyllrb.com/docs/front-matter/'

    - name: 链接2
      link: 'https://github.com/kurtsson/jekyll-multiple-languages-plugin'
    
excerpt_separator: <!--more-->
---


{% assign item =  site.data.iconinfos | where:"username", "Alex Wang"  %}
{%- if item[0].avatar.size > 0 -%}

{:.tweetstyle}
![]({{item[0].avatar}})( {{item[0].nickname}},{{item[0].title}})  >>  Move 很酷，能够用 Rust、C、Python 和 Move 在 Solana 上编写智能合约更酷。【原文为英文】 来源于 twitter.com ; Move 很酷，能够用 Rust、C、Python 和 Move 在 Solana 上编写智能合约更酷。【原文为英文】 来源于  链接1


{:.tweetstyle}
![]({{item[0].avatar}})( {{item[0].nickname}},{{item[0].title}})  >>  Move 很酷，能够用 Rust、C、Python 和 Move 在 Solana 上编写智能合约更酷。【原文为英文】 来源于 链接2


{%- endif -%}








<!--more-->