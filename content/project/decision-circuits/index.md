---
title: Mechanistic Attribution in Decision Circuits
# Short label used on buttons and tags where the full title is too long.
short_title: decision circuits
summary: ''
authors: []
tags: []
date: '2026-02-01'

# Projects are ongoing threads, so no date is shown on the card.
show_date: false

# Card order in the Projects section (low number = first).
weight: 3

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

I am fascinated by how intelligent behavior emerges from the coordinated activity of networks of neurons. This page highlights my research aimed at uncovering the representations, architectures, and dynamics that are crucial for fundamental cognitive computations.

**Reliable Computation from Random Wiring**: How can a randomly wired network produce reliable outputs? In the insect olfactory system, we showed that convergence—many variable units pooling onto one readout—recovers stereotyped responses without any learning ([Nature Communications 2020](/publication/random-connectivity/)).

**Causal Attribution in Distributed Circuits**: 
How do we attribute function to components of a network that integrates information over time? I studied this in the brain's decision-making circuits, where dominant theories assumed a *modular feedforward hypothesis*: evidence accumulation proceeds through a chain of circuits, each region performing a distinct step.

By analysing information flow between nodes and performing causal ablations, we falsified this hypothesis: the apparent feedforward organization concealed recurrent computation, masked by network-level compensation - ablate one node and the rest of the network reorganizes to cover for it. We proposed two models of this distributed circuit:

- Standard RNNs trained on the task don't reproduce this, so I developed ablation-based training techniques that build in these redundancy and robustness properties, yielding more faithful toy models of the biological network ([Neuron 2026](/publication/multiregion-accumulation/)).

- A dynamical-systems model fit only to activations with architectural constraints, which correctly predicted the network's robustness to perturbations it was never trained on ([NeurIPS 2024](/publication/celltype-dynamical-systems/), spotlight). 

**Unsupervised Discovery of Internal States**: 
Using unsupervised deep-learning models of neuron activations, this line of work also revealed the moment a network commits to a decision: an abrupt switch from input-driven to autonomous dynamics. This phenomenon is detectabe only at the population level, not in single units ([Nature 2025](/publication/dynamical-regime-transitions/)).
