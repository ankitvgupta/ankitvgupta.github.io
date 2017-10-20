---
layout: default
title: Ankit Gupta
---

## About Me

<img class="profile-picture" src="ankit.jpg">

Hi! I am a 2017 graduate of Harvard University, where I earned a joint BA/MS in Computer Science. I graduated *magna cum laude* with highest honors, and was inducted into Phi Beta Kappa. In my final two years, I worked with Professor Alexander Rush in the Harvard NLP group on deep learning over sequential data. 

For my thesis, I applied techniques from NLP to computational biology by using Dilated Convolutional Neural Networks to improve regulatory marker prediction on a whole-genome labeling task. This work was accepted to the ICML 2017 Workshop in Computational Biology, where I was also invited to give a talk, and received a speaker award and best poster award. I was co-advised by Dr. David Kelley, of the Broad Institute, for this work.

## Research Interests

I am primarily interested in developing machine learning models that are robust to different problem domains. My existing research experiences have spanned a variety of machine learning domains, including bayesian inference and deep learning. I'm particularly interested in problem domains that pose unique data constraints. For example, genomics datasets tend to be much sparser and have longer-distance dependencies than comparable sequential datasets in natural language processing. I'm interested in understanding how these unique constraints limit the efficacy of existing models, and in building models that are robust to them. 

## Publications

1. Gupta, A. and Rush, A.M., 2017. Dilated Convolutions for Modeling Long-Distance Genomic Dependencies. International Conference of Machine Learning, Sydney, Australia. [[arXiv]](https://arxiv.org/abs/1710.01278) [[code]](https://github.com/harvardnlp/regulatory-prediction)

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

## References

* Alexander "Sasha" Rush: Assistant Professor of Computer Science, Harvard University.
* David Parkes: Area Dean for Computer Science, George F. Colony Professor of Computer Science, Harvard University.
* Finale Doshi-Velez: Assistant Professor of Computer Science, Harvard University

## Website
This is based on jekyll website template. You can find the original template source code on [GitHub](https://github.com/bk2dcradle/researcher).




