---
title: Failure Modes in Sequential Decisions
# Short label used on buttons and tags where the full title is too long.
short_title: failure modes
summary: ''
authors: []
tags: []
date: '2026-01-01'

# Projects are ongoing threads, so no date is shown on the card.
show_date: false

# Card order in the Projects section (low number = first).
weight: 4

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

Neural activations are messy and complicated, so the behaviour of an agent often constrains a system's computational model more tightly than measurements of its internals ([Niv 2021](https://pubmed.ncbi.nlm.nih.gov/34096743/)). A large part of my research focuses on modelling the algorithm an agent is running from behaviour alone, and predicting its failure modes.

**Abstract replay for efficient learning**: How does a system consolidate days of learning into compositional knowledge that transfers to new tasks? The two halves of the question suggest two ingredients: compositionality requires reusable abstractions, and consolidation requires replaying - even simulating - experience offline. We proposed that the cortico-hippocampal circuits in the brain combines the two to learn efficiently and compress memories.<br> 
<span class="cite-small">Spens E\*, Gupta D\*, Lewis E, Castegnaro A, Burgess N, Mrsic-Flogel T, Behrens TEJ (2026). Efficient learning through abstracted generative replay. [Cosyne Abstracts 2026](/uploads/cosyne2026-generative-replay-poster.pdf)</span>


**Failure modes in sequential decisions**: I showed that two failure modes of decision-making (history-dependent biases and attentional lapses) long treated as separate and unpredictable - are signatures of one underlying autoregressive computation, and can therefore be modelled and predicted  ([Nature Communications 2024](/publication/trialhistory/); Best Paper Award at RLDM 2022). Along the way I showed that a widely used correction for slow drifts in decision variables distorts inference, and that the drift has to be modelled jointly with the updates instead ([NBDT 2022](/publication/slowdrift/)).

