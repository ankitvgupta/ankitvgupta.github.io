---
layout: default
title: Ankit Gupta
description: My personal engineering blog, spanning machine learning and software engineering. A mix of side projects and serious thoughts.
---

## About Me

<img class="profile-picture" src="ankit.jpg">

I'm a Visiting Partner at Y-Combinator.

Previously, I was the Co-Founder and CTO of [Reverie Labs](https://biopharma.ginkgo.bio/resources/blog/acquiring-reverie-labs-platform-to-enhance-ai-driven-drug-discovery-capabilities-for-customer-programs), which used machine learning to accelerate drug discovery. At Reverie, I led a cross-function team of scientists and engineers spanning machine learning, data science, software engineering, cloud infrastructure, cheminformatics, and computational chemistry. My role was to be the bridge between the different groups of people, encourage them to learn and speak the same technical language, and find and ship projects at the intersection of computation and chemistry. We used these technologies to advance our in-house pipeline of small molecule therapeutics in oncology. Reverie Labs was sold to Ginkgo Bioworks in February 2024.

I went to college at Harvard University, where I earned a joint BA/MS in Computer Science. I graduated *magna cum laude* with highest honors, and was inducted into Phi Beta Kappa. In my final two years, I launched my research career, working with Professor Alexander Rush in the [Harvard NLP group](http://nlp.seas.harvard.edu) on deep learning over sequential data. For my thesis, I applied techniques from NLP to computational biology by using Dilated Convolutional Neural Networks to improve regulatory marker prediction on a whole-genome labeling task. I was co-advised by Dr. David Kelley, of the Broad Institute, for this work.

## Publications

1. Gupta, A. and Rush, A.M., 2017. Dilated Convolutions for Modeling Long-Distance Genomic Dependencies. International Conference of Machine Learning, Sydney, Australia. [[arXiv]](https://arxiv.org/abs/1710.01278) [[code]](https://github.com/harvardnlp/regulatory-prediction) [[Talk]](https://youtu.be/HmCecphEvQg)

## Research, Academic, and Teaching Awards

1. Speaker Award, ICML 2017, Workshop on Computational Biology
2. Best Poster Award, ICML 2017, Workshop on Computational Biology
3. Phi Beta Kappa Honor Society Inductee, Harvard College, May 2017
4. Derek Bok Award for Distinction in Teaching, Spring 2017 (CS 181)
5. Derek Bok Award for Distinction in Teaching, Fall 2016 (CS 182)
6. Derek Bok Award for Distinction in Teaching, Spring 2016 (CS 181)
7. John Harvard Scholar (top 5% GPA)

## Teaching

I love teaching, and had the privilege of having several experiences teaching while I was an undergrad. Teaching students helped me form my passions for computer science, and I look back fondly on those times.

Year | Course | Professor
-----|------- | -----------
2017 | CS 181: Machine Learning | Alexander Rush, David Parkes  
2016 | CS 182: Artificial Intelligence | Scott Kuindersma
2016 | CS 181: Machine Learning | Finale Doshi-Velez
2014 | CS 50: Introduction to Computer Science | David Malan

## Projects

<div>
<ul>
 {% for project in site.projects %}
   <li>{{ project.output }} </li>
 {% endfor %}
</ul>
</div>

## Website

This is based on jekyll website template. You can find the original template source code on [GitHub](https://github.com/bk2dcradle/researcher).
