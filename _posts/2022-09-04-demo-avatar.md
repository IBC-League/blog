---
layout: post
title:  "demo avatar"
date:   2022-09-04 17:41:22 +0800
categories: 
author: 红军大叔
show_excerpt: true
excerpt_separator: <!--more-->
---

test

{{ site.data.iconinfos | jsonify }}

{% assign item =  site.data.iconinfos | where:"name", "Alex Wang"  %}
{{ item[0].avatar | jsonify }}

<img src="{{item[0].avatar}}"/>



<!--more-->