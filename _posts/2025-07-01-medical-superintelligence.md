---
title: "Some Thoughts on Medical Superintelligence"
description: "The importance of good benchmarks and real-world data"
layout: post
date: 2025-07-01 1:00
headerImage: false
image: /assets/doctor_ai.jpg
projects: true
hidden: false 
author: ankitgupta
externalLink: false
category: blog
---


Microsoft AI released a report this week about [MAI-DxO](https://arxiv.org/abs/2506.22405), their research on an LLM orchestration system for medical diagnosis, and an accompanying blog titled [The Path to Medical Superintelligence](https://microsoft.ai/new/the-path-to-medical-superintelligence/). To me, this is one of the most exciting application domains of AI. 

Here are some thoughts on Microsoft’s approach. These are a mix of my own opinions and reactions from some friends who are doctors. 

#### The Benchmark

A key element of any new AI model is establishing its performance on a *useful* benchmark that appropriately models the relevant task. Historically, medical AI models focused on standardized exams like USMLE and performed well, but the contrived nature of multiple choice exams didn’t match the iterative information acquisition of an actual clinical experience. I like Microsoft’s instinct to address this. They instead extract clinical journeys out of the New England Journal of Medicine, which publishes weekly case reports in the format of a full clinical path, with patient presentation, diagnostic tests that were ordered, information retrieved, further tests ordered, etc. They then convert this into a multi-turn conversational benchmark. 

This is a step in the right direction, but a few doctors I spoke to noted that the types of case reports usually highlighted in NEJM look more like USMLE questions than most clinical experiences — rare scenarios with a relatively clear “right” answer. In that sense, perhaps we shouldn’t be surprised that models that do well on USMLE would also do well here. 

That said, I’ll always respect a team that does the effort to release a new benchmark. Making these can be boring, expensive, and imprecise but it moves the field forward to see reasonable attempts to convert the messiness of the real world into a measurable task.

#### Cost Considerations

One of the aspects of this work I enjoyed reading about was the introduction of cost budgets. Essentially, how well does the model do if you limit its willingness to spend on diagnostic tests (or else it’d presumably order everything for everyone). This is interesting both in its reflection of the realities of medical decision making and in seeing the model performance improvements as a function of higher spending. 

It also misses a few key factors, which to their credit Microsoft acknowledges as “downstream factors”. For example, my understanding is that tests are ordered serially in their system and not in parallel. In a clinical setting, getting a result faster may have significant cost considerations — e.g. reducing the risk of worsening complications or clearing space in a crowded hospital facility. It might in fact make it worth it to order many more tests in certain circumstances. Perhaps a future version of this benchmark can consider ways to price in these externalities. 

#### Real World Data 

A consistent response across several doctors I talked to was to the effect of “this is progress but misses what’s actually hard about diagnosis — getting your patient to actually tell you things”. Patients are tricky. They are human beings — with emotions, biases, motives, and limitations. A patient may not be able to describe where they are feeling pain or may misdescribe it. They may be embarrassed or ashamed to share their full history, or offer a rosier picture of it than reality. They may have had bad experiences with medicine in the past and understandably not trust the system. They may spend a ton of time sharing irrelevant information that a doctor must patiently sift through to find the nuggets of medical value. This requires empathy, experience and trust. It is the skillset that distinguishes a great diagnostician. Since this model is evaluated on a case report that is by definition the byproduct of that effort by a doctor, it skips this critical information retrieval operation where much of the diagnosis implicitly happens. 

Don’t get me wrong — I certainly believe that this process can also be transformed by AI. It’s not unreasonable for me to imagine a future where the microphone currently being used for AI scribing could also be guiding a medical professional (perhaps a less specialized one than today — more on that below) through a patient interaction. But, as it stands, it’s a limitation with this work in terms of being able to directly compare to what a human doctor does. 

#### Referrals and Consults

This work got me thinking about a related element of medical practice brimming with opportunity for improvement —  the system for consults and referrals. 

You’ve probably gotten a referral from your PCP if you had a specialized issue, like a skin malady to a dermatologist or stomach pain to a GI doctor. Unfortunately, referral waiting times can be outrageously long. One doctor I spoke to cited 6 month waits for a GI referral. On the flipside, when I speak to specialist doctors, they tell me they regularly see patients that were referred to them that didn’t actually need a highly specialized doctor. It seems likely that for a large subset of circumstances, a well trained AI model can handle this task.

Moreover, in inpatient settings, doctors will regularly “consult” doctors in specialized services to get an opinion about their patients. One surgeon told me there are regularly days that several of  the consults they get do not require a surgeon’s specialized opinion, and meanwhile other cases where a surgeon could have intervened sooner get overlooked. I can see technology like this fundamentally altering this dynamic, letting these specialized practitioners focus on the physical labor of operating. 

#### Outlook

There are opportunities for technology like this to reshape how patients get care. Generalist doctors can take wider care of the patients they have the most context and mutual trust with without having to wait months to deliver care. Specialist doctors can have less of their time wasted and can focus their attention on areas where their training is most relevant. For an increasing set of circumstances, people will have access to high quality medical advice for basically $0, giving doctors the time to focus on those most in need of additional context and attention. The next generation will laugh at the concept that we wait 6 months to get a rash looked at by a dermatologist. To get there though, we have to continue to innovate on establishing the right tasks that reflect the complex realities of care delivery. This work seems like a step in the right direction. 

If you’re a medical professional or an AI research scientist with thoughts about this, please reach out. I’d love to hear your perspective. 

---

*Thanks to Lucy Nam, Nishant Uppal, and a few others that preferred to remain anonymous for reading drafts of this.*
