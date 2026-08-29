---
title: Knowledge Removal in LLMs
# Short label used on buttons and tags where the full title is too long.
short_title: knowledge removal
summary: ''
authors: []
tags: []
date: '2026-04-01'

# Projects are ongoing threads, so no date is shown on the card.
show_date: false

# Card order in the Projects section (low number = first).
weight: 1

external_link: ''

image:
  caption: ''
  focal_point: Smart
  preview_only: true

url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''
slides: ''
---

A large portion of safety and alignment research has focused on closed frontier models, due to their advanced capabilities. However, the gap between open and closed models is [narrowing fast](https://artificialanalysis.ai/), and open-weight models are now being [seriously considered for high-stakes applications](https://stateofopensource.ai/). 

Yet, open-weight safety remains an unsolved problem. Every open-weight model has been successfully "abliterated" through refusal vector ablation, yielding models that comply on dangerous prompts, and unlearning of sensitive information remains extremely brittle to adversarial attacks. 

This project was my first attempt to work on this problem (<a class="accent-link" href="https://www.lesswrong.com/posts/shkMAc9Logd8xPQvB/red-teaming-llm-unlearning-lunar-s-forgotten-knowledge-is">write-up</a>). I red-teamed <a class="muted-link" href="https://arxiv.org/abs/2502.07218">LUNAR</a>, a state-of-the-art unlearning method. With the kind of access any open-weight attacker has, I could recover the "forgotten" knowledge in two ways:
- using GRPO fine-tuning, the model learned to route around LUNAR's modifications
- by steering activations along a difference-in-means direction

This is why I think that open-weight safety requires a different, multi-pronged strategy from closed safety: it requires safety in the absence of guardrails, and robustness to adversarial attacks that are *optimised* to target activations (such as refusal ablation or activation steering) or weights (such as fine-tuning to escape safeguards). Meeting that bar demands a much closer collaboration between mechanistic interpretability and alignment - an area I am keen to work more on in the future.

