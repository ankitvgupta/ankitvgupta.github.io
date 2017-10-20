---
layout: project
title: Project2
---
**Correlated Topic Model (CTM) to organize genes in the human genome.**
	I sought to improve upon prior efforts to use topic models to model genetic expression using RNA-seq data. Past work used methods like Latent Dirichlet Allocation, which involve a generative process in which topics are independent of one another. I hypothesized that when trying to use a topic model to organize genes into topics, this assumption would likely not stand. As such, I implemented a Correlated Topic Model from scratch using Variational EM, and showed that it could discover interesting and relevant topics. Implementation done in Python with Numpy. [[Poster]](assets/rna_topic_modeling_poster.pdf) [[code]](https://github.com/ankitvgupta/rnaseqtopicmodeling) [[Paper]](assets/rna_topic_modeling_paper.pdf)