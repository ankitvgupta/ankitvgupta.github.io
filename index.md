---
layout: default
title: Ankit Gupta
description: My personal engineering blog, spanning machine learning and software engineering. A mix of side projects and serious thoughts.
---

## About Me

<img class="profile-picture" src="ankit.jpg">

I'm a Co-Founder of [Reverie Labs](http://www.reverielabs.com), which uses machine learning to accelerate drug discovery. At Reverie, I lead a cross-function team of scientists and engineers spanning machine learning, data science, software engineering, cloud infrastructure, cheminformatics, and computational chemistry. My role is to be the bridge between the different groups of people, encourage them to learn and speak the same technical language, and find and ship projects at the intersection of computation and chemistry. We use these technologies to advance our in-house pipeline of small molecule therapeutics in oncology. 

Previously, I was at Harvard University, where I earned a joint BA/MS in Computer Science. I graduated *magna cum laude* with highest honors, and was inducted into Phi Beta Kappa. In my final two years, I worked with Professor Alexander Rush in the [Harvard NLP group](http://nlp.seas.harvard.edu) on deep learning over sequential data. 

For my thesis, I applied techniques from NLP to computational biology by using Dilated Convolutional Neural Networks to improve regulatory marker prediction on a whole-genome labeling task. This work was accepted to the ICML 2017 Workshop in Computational Biology, where I was also invited to give a talk, and received a speaker award and best poster award. I was co-advised by Dr. David Kelley, of the Broad Institute, for this work.

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

While I was a student at Harvard, I had the opportunity to be a teaching fellow for a variety of courses. This role involved helping to write problem sets, teaching weekly sections, holding office hours, leading course-wide review sessions, meeting students one-on-one and grading. I am grateful to have received the Derek Bok Award for Distinction in Teaching, given to teaching fellows with exemplary reviews from students.

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




