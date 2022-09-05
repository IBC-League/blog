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
{% assign bob =  site.data.iconinfos | where:"username", "Bob"  %}

{:.tweetstyle}
![]({{item[0].avatar}})( {{item[0].nickname}},{{item[0].title}})  >>  demo 01

{:.tweetstyle}
![]({{bob[0].avatar}})( {{bob[0].nickname}},{{bob[0].title}})  >>  demo 02









<!--more-->