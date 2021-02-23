#!/bin/bash
while IFS="," read filename title description date blogtype url
do

    echo -e "---
title: $title
description: $description
date: $date
tags:
  - $blogtype
layout: layouts/post.njk
image: /img/w3images/global_smallholder_app.png
externalurl: $url
---" > "$filename.md"

done < externalPubs.csv

rm filename.md




