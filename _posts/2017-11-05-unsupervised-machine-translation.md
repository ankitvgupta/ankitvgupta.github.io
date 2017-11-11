---
title: "Two Novel Approaches for Unsupervised Machine Translation"
layout: post
date: 2017-11-05 12:00
headerImage: false
projects: true
hidden: false 
author: ankitgupta
externalLink: false
category: blog
---

Two recent publications, both in review at ICLR 2017, propose methods to do *unsupervised* machine translation. These works propose overlapping methods to translate between languages _without any parallel corpora_. To me, at least on first glance, this result seems highly unintuitive. So, I’m going to use this blog post to summarize these two approaches, and discuss their high-level differences.

Note that this post is not going to delve into a quantitative comparison of the results between these papers. Instead, I’m just trying to describe the method-level differences between the techniques. 

For review of the core methods that this blog post covers, check out these resources about [sequence-to-sequence models](https://github.com/tensorflow/nmt), [recurrent neural networks](http://colah.github.io/posts/2015-08-Understanding-LSTMs/), [adversarial training](https://arxiv.org/abs/1701.00160), and [statistical NLP with deep learning](http://cs287.fas.harvard.edu/).

<hr> 
### Paper 1:  [_Artetxe et al. Unsupervised Neural Machine Translation. Under review at ICLR 2018_](https://arxiv.org/abs/1710.11041)

This paper focuses on building models to do neural machine translation with monolingual corpora - meaning no parallel corpuses between languages. Below are the fundamental steps that are needed to build this model.

#### Unsupervised Cross-Lingual Embeddings
One of the key techniques that this approach uses is cross-lingual embeddings. To train these, you first train embeddings in distinct languages using monolingual corpora, and then a linear transformation maps them into a shared space based on a bilingual dictionary. The authors also discuss how adversarial training and self-learning extensions can make this process further unsupervised. Armed with these cross-lingual embeddings, the authors can embed an input sequence from several different languages into a shared representation space. This is crucial for the “encoder” step in their model.

#### Core Model: Encoder-Decoder with Global Attention, based on Bidirectional GRU.

For the core model, the authors use a fairly standard [encoder-decoder with attention](https://arxiv.org/abs/1409.0473). Here are some important attributes of this model:

1. *Shared encoder*: Only one encoder is needed, since the authors are using cross-lingual embeddings.
2. *Fixed Pretrained Cross-Lingual Embeddings*: The authors used pretrained unsupervised cross-lingual embeddings, and then fix them during training. This way, the cross-lingual mapping does not change due to training.
3. *One decoder per language*: While there is a shared decoder (due to the cross-lingual embeddings), there is a different decoder for each language. 

#### Unsupervised Training

To actually do the training, the authors use a host of techniques. Here is a summary of them

1. *Denoising*: This is a key aspect of this model. To make the model unsupervised, it is trained to reconstruct its own input. It is trained to take an input sequence, encode it, and then decode it back to the same language. Implemented naively, this is just a copying task. To prevent that from occurring, the authors add noise to the inputs, and the model learns to denoise the inputs. This is inspired by [denoising autoencoders](http://www.cs.toronto.edu/~larocheh/publications/icml-2008-denoising-autoencoders.pdf).
2. *Backtranslation*: The denoising model still only learns translations to itself, not between languages. To do this, they use [backtranslation](https://arxiv.org/abs/1511.06709). In short, this means you encode a noisy input, decode it (greedily) into another language. This process creates a “pseudo-parallel” corpus. Then, train the system to predict the original sentence from this predicted translation.
3. *Iterative Training*: They alternate the above training objectives. First they perform one batch of denoising for language 1 (L1), then one batch of denoising for language 2 (L2), then one batch of backtranslation from L1 to L2, and then one batch of backtranslation from L2 to L1. 
4. *Optional small parallel corpus*: If you have a small parallel corpus, you can also alternate with training on that rather than the pseudo corpus. This is makes overall approach semi-supervised rather than unsupervised.

And that’s basically it. Refer to the [paper](https://arxiv.org/abs/1710.11041) to see the implementation details, hyperparameters, optimization methods, and results. In short, this works pretty well, approaching the performance of supervised NMT. Adding semi-supervision means it does extremely well. Please refer to the paper for in-depth details into the results.

With that method defined, let’s now turn to the other publication. 

<hr> 

### Paper 2: [_Lample et al. Unsupervised Machine Translation Using Monolingual Corpora Only. Under review at ICLR 2018_](https://arxiv.org/abs/1711.00043)

Like the first paper, this one also seeks to perform unsupervised machine translation by using only monolingual corpora. However, the methods it uses are different. In this section, I will describe the overall approach that this paper uses, and then in the final sections of this post, I will assess the similarities and differences between the two models.

#### Neural Machine Translation Model

1. The authors also use a [_encoder-decoder with attention_](https://arxiv.org/abs/1409.0473). The encoder is a bidirectional LSTM, and the decoder is an LSTM.
2. The authors use a _single encoder_ and _single decoder_ for all languages, with the difference between languages being the lookup table for the vocabularies of different languages.
3. _No fixed embeddings_: the authors use language-specific embeddings that are modified during the training process.

#### Unsupervised Training
1. *Denoising auto-encoding*: The authors use the strategy inspired by [denoising autoencoders](http://www.cs.toronto.edu/~larocheh/publications/icml-2008-denoising-autoencoders.pdf). They add noise to the input sentences and then learn to reconstruct the input through the encoder-decoder models. This is similar to the method in Paper 1. For details of the noise model, see the *Differences* section below.
2. *Cross-domain training*: This is essentially the same as the backtranslation in the first paper. The authors sample a sentence $$ x \in D_{l_1}$$ any apply the current translation model $$M$$ to it to generate $$y = D(x)$$ where $$y \in D_{l_2}$$. Then, they add noise to $$y$$, and again pass it through the translation model to recover a reconstruction of $$x$$. The difference between the original and the reconstruction is a loss term.
3. *Adversarial training*: Intuitively, we would like the distribution of encoder outputs to be the same regardless of the input language. To enforce this, the authors add an adversarial loss term to encoder outputs during the forward translation and backtranslation steps. Thus, they train a neural network (the _discriminator_) to distingiuish between the encodings of source and target sentences, and the encoder is additionally trained to fool the discriminator. This is analogous to the training process in a GAN (see [this NIPS 2016 tutorial](https://arxiv.org/abs/1701.00160) for a review on GANs).
4. *Loss*: Thus, the final objective function is simply the sum of the denoising auto encoder losses for each language, the cross-domain training losses between the two languages (in both directions), along with the adversarial loss. At the same time, the discriminator loss is minimized to update the discriminator. Equation (4) in the paper formally writes down this loss term.
5. *Training Process*: Iterative training from an initial translation model. Start by inferring a [bilingual dictionary using monolingual data](https://arxiv.org/abs/1710.04087). The initial model is simply word-by-word translation using the parallel dictionary. Use the current model to translate each dataset and update the model and discriminator with the above loss function via gradient descent. Repeat until satisfied with the result.
6. *Hyperparameter Selection*: Translate from language 1 to language 2 and back, and then calculate BLEU score between original inputs and their reconstructions. Do that in both directions, and take the average. The authors show that this metric correlates well with actual BLEU score using a parallel validation corpora.

And that’s basically it. Again, there are details about the implementation that are worth looking into if you are trying to reimplement this result.  In short, they get pretty good results, again approaching the level of supervised NMT. They also do a number of addendums to assess how well this is learning the translation. It’s definitely worth looking into. However, this should give a high-level summary of the central model that this paper employs.

<hr> 
### Similarities Between the Papers

Now that I have described the two papers, we can compare them for similarities:

1. Obviously, they both use _monolingual corpora_.
2. Both use _denoising autoencoders_. However, they way they add noise is somewhat different. Check out the *Differences* section for more.
3. Both seem to use _backtranslation_. As far as I could tell, there were no major differences in the method of doing so.
4. Both use a bidirectional RNN in the encoder, and a unidirectional RNN in the decoder.
5. Paper 1 shows how semi-supervision can help dramatically. I would imagine this applies for Paper 2 as well.

### Differences Between the Papers

While there are many similarities, there are some important differences: 

1. _Adversarial Training_ vs _Cross-lingual Embeddings_. Paper 2 uses adversarial training to make the encoder distributions match for each language, which I found pretty clever. Paper 1 circumvents the need for this by using pretrained and fixed unsupervised cross-lingual embeddings.
2. _Denoising Method_: The way that each of the papers do denoising is somewhat different. In Paper 1, the authors make random swaps of contiguous words, where for a sequence of N elements, they make N/2 random swaps. In Paper 2, the authors drop every word in the input sentence with some probability, and they “slightly” shuffle the input sentence, with the amount of shuffling tunable by a hyperparameter.
3. _Iterative training_: Though it’s not exactly clear, Paper 2 appears to not be as explicitly iterative about training the denoising step vs. the cross-domain step. Their pseudocode implies that they do it all in a single training step. Paper 1 indicates that they iteratively perform denoising and cross-domain training.
4. _Single decoder vs language-specific decoder_: Paper 1 learns one decoder per language, whereas Paper 2 learns a shared decoder which operates using a language-specific lookup table. My understanding is that this distinction is necessary because of the use of cross-lingual embeddings in Paper 1.

### Conclusions

Overall, these papers present two highly overlapping but different methods for training a neural machine translation model without any parallel corpora at fairly high accuracy. On first glance, this result seems highly unintuitive. However, after diving into the methods, we see some fundamentals that make sense in this context: adversarial losses and cross-lingual embeddings to unify encoder distributions. For me, the surprising part remains that the denoising component works as well as it does, since both of these papers introduce relatively straightforward examples of noise.

Thanks for reading! If you have any thoughts or suggestions, please [reach out](/contact) via email or Twitter.
<br><br>