---
title: "Dilated Convolutions for Modeling Long-Distance Genomic Dependencies"
layout: post
date: 2017-10-03 12:00
headerImage: false
projects: true
hidden: false 
author: ankitgupta
externalLink: false
category: blog
---

## Overview of Machine Learning x Genetics 

In the past few years, there have been significant advances in both machine learning and genomics. In machine learning, there has been rapid advancement on tasks like image classification, segmentation, and machine translation using deep neural networks. These models require large amounts of training data, and generally either learn features through convolutional layers or sequential dependencies through recurrent layers. 

At the same time, there has been a dramatic change to the study of the human genome. In the early 2000s, the Human Genome Project had just begun to publish its initial results, and researchers were only just beginning to get their hands on large-scale genomic data. Now, entire genomes can be sequenced cheaply, and techniques like ChipSeq and Hi-C have enabled researchers to get cell-type specific genomewide charactertizations of genetic activity. 

With these experimental techniques has come a massive range of curated raw data sources, containing information like the locations of transcription factor binding sites, histone modifications, and DNAse hypersensitivity sites. The availability of this data leads to a simple question: _can we use machine learning to model the regulatory regions of the genome_? Moreover, to what extent do methods that were originally developed for images and text apply to genomic data?

## Problem Motivation

One of the defining aspects of human DNA is its complex structure. Since grade school, we are taught to visualize DNA as the Watson and Crick style double helix: a pair of linear strands winding around one another. While this characterization is easy to understand, we now know that the genome is much more complicated. This "linear" strand is actually tightly compacted in 3-dimensional space, meaning that *DNA locations that are far apart along the 1-dimensional sequence may be adjacent and able to interact*. The nature of this compacting is thought to be regulated by a variety of factors, including chemical modifications to bound proteins called histones and the binding of external proteins called transcription factors. 

Thus, if we are trying to predict the locations of regulatory marker activity directly from a DNA sequence, it follows that capturing information across a very wide strand of DNA should improve accuracy. However, in order to naively scale existing approaches for regulatory marker prediction to larger input sequences, the models would require a linear increase in the number of parameters, which makes them prone to overfitting, and reduces training speed. Moreover, usually effective recurrent neural network models such as LSTM-based networks are difficult to train due to the long sequence lengths. 

## Problem Statement



## Solution

To address this challenge, we need a model in which the number of parameters grows sublinearly with respect to the input size, and in which we can parallelize our predictions across the input sequence (as it may be very long). The first constraint makes standard convolutional neural networks impractical, as their parameters grow linearly with respect to the receptive field of a given output. The latter constraint makes standard LSTM-based networks impractical too.

Instead, we use a *dilated convolutional neural network*. The receptive field size of a dilated CNN is exponential in the number of layers. This means that we can scale our models to several orders of magnitude more inputs than existing approaches, while only requiring a small increase in the number of parameters. Moreover, since these are adaptations of convolutions, we can implement these in a highly-parallelizable manner on GPU hardware in standard neural network packages. 







