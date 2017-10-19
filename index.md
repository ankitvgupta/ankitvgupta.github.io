---
layout: default
title: Ankit Gupta
---

## About Me

<img class="profile-picture" src="ankit.jpg">

Hi! I am a 2017 graduate of Harvard University, where I earned a joint BA/MS in Computer Science. I graduated *magna cum laude* with highest honors, and was inducted into Phi Beta Kappa. In my final two years, I worked with Professor Alexander Rush in the Harvard NLP group on deep learning over sequential data. 

For my thesis, I used Dilated Convolutional Neural Networks to improve regulatory marker predictive accuracy on a whole-genome labeling task. This work was accepted to the ICML 2017 Workshop in Computational Biology, where I was also invited to give a talk, and received a speaker award and best poster award. I was co-advised by Dr. David Kelley, of the Broad Institute, for this work.

## Research Interests

I'm primarily interested in developing widely-applicable machine learning models. My existing research experiences have spanned a variety of machine learning domains, including bayesian inference and deep learning. I'm particularly interested in problem domains that pose unique data constraints. For example, genomics datasets tend to be much sparser and have longer-distance dependencies than comparable sequential datasets in natural language processing. I'm interested in understanding how these unique constraints limit the efficacy of existing models, and in building models that are robust to them.

## Publications

1. Gupta, A. and Rush, A.M., 2017. Dilated Convolutions for Modeling Long-Distance Genomic Dependencies. International Conference of Machine Learning, Sydney, Australia. [[arXiv]](https://arxiv.org/abs/1710.01278) [[code]](https://github.com/harvardnlp/regulatory-prediction)

## Research, Academic, and Teaching Awards

1. Speaker Award, ICML 2017, Workshop on Computational Biology
2. Best Poster Award, ICML 2017, Workshop on Computational Biology
3. Phi Beta Kappa Honor Society Inductee, Harvard College, May 2017
4. Derek Bok Award for Distinction in Teaching, Spring 2017 (CS 181)
5. Derek Bok Award for Distinction in Teaching, Fall 2016 (CS 182)
6. Derek Bok Award for Distinction in Teaching, Spring 2016 (CS 181)

## Teaching 

While I was a student at Harvard, I had the opportunity to be a teaching fellow for a variety of courses. This role involved helping write problem sets, teaching sections, holding office hours, leading course-wide review sessions, and grading.

Year | Course | Professor
-----|------- | -----------
2017 | CS 181: Machine Learning | Alexander Rush, David Parkes  
2016 | CS 182: Artificial Intelligence | Scott Kuindersma
2016 | CS 181: Machine Learning | Finale Doshi-Velez
2014 | CS 50: Introduction to Computer Science | David Malan

## Projects

* **Predicting regulatory markers using dilated convolutional neural networks [Thesis]**
	This work uses deep learning to predict the locations of regulatory markers in the human genome. The markers include transcription factor binding sites, histone modifications, and DNAse hypersensitivity sites. I had noticed that prior work in this area only considered short sequences of DNA, where were generally 1000 base-pairs or less. However, due to DNA's complex three-dimensional conformation, there exists dependencies on the scale of several thousands, or even millions, of base-pairs in the genome that would likely be relevant to predicting regulatory marker locations. To address this, I proposed an architecture using dilated convolutional neural networks, which had prevously been used for image segmentation and text-to-speech to build a predictive model for regulatory markers. This model was more effective than past techniques at labeling regulatory markers across the entire human genome. Advised by Professor Alexander Rush and Dr. David Kelley. Implemention done in Python using Tensorflow.

* **Correlated Topic Model (CTM) to organize genes in the human genome**
	I sought to improve upon prior efforts to use topic models to model genetic expression using RNA-seq data. Past work used methods like Latent Dirichlet Allocation, which involve a generative process in which topics are independent of one another. I hypothesized that when trying to use a topic model to organize genes into topics, this assumption would likely not stand. As such, I implemented a Correlated Topic Model from scratch using Variational EM, and showed that it could discover interesting and relevant topics. Implementation done in Python with Numpy.

* **Protein secondary structure prediction using LSTM-based maximum entropy markov model**
	We were interested in developoing models for protein secondary structure directly from the protein sequence. Given an input protein sequence, we sought to predict the secondary structure label at each position. We used a number of state-of-the-art sequential processing techniques, ranging from simple maximum entropy markov models to Bidirectional LSTMs. Implementation was done in Torch. Collaboration with Tom Silver.

* **MapReduce-based implementation of Stable Marriage Problem with PySpark**
	We revisit a variant of the Stable Marriage Problem, used for real-world situations like the national residency match. In this task, we have a set of medical residencies and a set of hospitals, each of which has a ranking over the other, and each hospital has a set number of spots. We wish to find a set of stable matchings such that there is no pairing of resident and hospital such that the resident prefers the hospital over their assigned hospital, and the hospital prefers the resident over any of their current ones. We implemented a fully-parallelized version of this famous algorithm using MapReduce via Apache Spark. Implementation in Python with PySpark. Collaboration with Jonah Kallenbach.

* **Distributed blockchain-based voting system**
	We re-consider a fundamental property of American voting system: privacy of one's vote in exchange for uncertainty of it being counted. We considered how one could design a distributed system that allows every voter to *guarantee* that their vote is counted, in exchange for somewhat less privacy. To do this, we implement the blockchain protocol, complete with miners that ensure that votes are bundled into blocks, voting machines that add new transactions (votes) to the global ledger, and a distributed ledger. Implementation in C++, using gRPC and Google Protocol Buffers, and functions over AWS. Collaboration with Jonah Kallenbach, Matt Rauen, and Willy Xiao.

* **CuckooRings: Fast Consistent Hashing Algorithm using Cuckoo Hashing and Ring-based consistent hashing**
	We sought to combine two hashing technologies: Cuckoo Hashing and Consistent Hashing into one that combined the benefits of both. Cuckoo Hashing uses two hash tables to allow for amortized constant time hashes and lookups. Consistent Hashes uses a ring-based data structure to allow a hash table to reduce or increase the number of buckets without needing the rehash the entire table. We combined these two technologies into a single CuckooRing hashing structure, which allows for fast hashes and lookups, as well as resilience to changing numbers of buckets. Implemented in C++. Collaboration with Jonah Kallenbach.

* **LSTMs to build a predictive model for user behavior on iOS**
	We take advantage of a simple vector for a potential side-channel attack in iOS 10: Safari allows websites to request accelerometer data from users without requesting any additional permissions. We show that this data can be used to ascertain, with reasonably high probability, what a user is doing at the time (walking, running, going up stairs, etc.).


## References

* Alexander "Sasha" Rush: Assistant Professor of Computer Science, Harvard University.
* David Parkes: Area Dean for Computer Science, George F. Colony Professor of Computer Science, Harvard University.
* Finale Doshi-Velez: Assistant Professor of Computer Science, Harvard University

## Website
This is a jekyll based resume template. You can find the full source code on [GitHub](https://github.com/bk2dcradle/researcher)




