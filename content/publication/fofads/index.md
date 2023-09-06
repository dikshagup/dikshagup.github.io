---
title: 'Distributed evidence accumulation in corticostriatal circuitry'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Charles Kopec
  - Adrian Bondy
  - Thomas Luo
  - Verity Elliott
  - Carlos Brody

# Author notes (optional)
author_notes:


date: '2023-03-01T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: 

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['1']

# Publication name and optional abbreviated publication name.
publication: Computational and Systems Neuroscience conference
publication_short: COSYNE

abstract: Making decisions based on noisy evidence requires two distinct computations - accumulation of evidence followed by its categorization to reach a decision. How are these sequential computations performed by recurrently connected brain areas? In rats, these two theoretically defined computations have been mapped onto two interconnected area - anterodorsal striatum (ADS) and frontal orienting fields (FOF) respectively. This provides an intriguing - yet untested - neural implementation of the decision process in which ADS and FOF form a feedforward functional hierarchy. Here, we present results from simultaneous recordings and projection-specific inactivations that challenge this modular, feedforward hypothesis. Contrary to this hypothesis, we found that ADS and FOF are indistinguishable in their timescales and strength of encoding and decoding of the accumulator value. Further, accumulator estimates from the two areas show no discernible lead-lag relationship and their communication subspace carries evidence information, consistent with bi-directional sharing of accumulation related signals. Moreover, such communication is necessary for decision-making, as optogenetic silencing of FOF inputs to ADS impaired decisions throughout the accumulation period, revealing a role for FOF in evidence accumulation that was obscured during nonselective whole-region silencing. Together, our results indicate that the FOF-ADS circuitry participates in evidence accumulation in a distributed, recurrent manner unlike previously hypothesized. We model this distributed implementation using a multi-region recurrent neural network (RNN) with biological constraints on connectivity. We leveraged perturbation data to introduce regional specialization into the RNN,by training it to capture behavior on perturbation and control trials. The trained model reproduces empirical representational redundancies and replicates effects of novel (untrained) perturbations. We show that the models dynamics recover during FOF perturbations, facilitated by recurrent inputs into FOF from ADS, but not during perturbations of its ADS projections. Our novel combination of projection-specific perturbations and RNN modeling offers a promising approach for understanding complex multi-region implementations of simple computations.

# Summary. An optional shortened abstract.
summary: 

tags: []

# Display this page in the Featured widget?
featured: false

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: ''
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: 'https://www.youtube.com/watch?v=h7kqB-oqeYI&t=3149s'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
  focal_point: ''
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
  - 

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---
<!-- 
{{% callout note %}}
Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the _Slides_ button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/). -->
