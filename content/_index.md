---
# Leave the homepage title empty to use the site title
title:
date: 2023-09-05
type: landing

sections:
  - block: about.biography
    id: about
    content:
      title: 
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin

  - block: experience
    id: experience
    content:
      title: Education and Positions
      # Date format for experience
      #   Refer to https://wowchemy.com/docs/customization/#date-format
      date_format: Jan 2006
      # Experiences.
      #   Add/remove as many `experience` items below as you like.
      #   Required fields are `title`, `company`, and `date_start`.
      #   Leave `date_end` empty if it's your current employer.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - title: Senior Research Fellow
          company: Pivotal AI Safety Fellowship
          advisors: with Stefan Heimersheim (Adecco/Google DeepMind)
          company_url: 'https://www.pivotal-research.org/'
        #   company_logo: org-gc
          location: London, UK
          date_start: '2026-07-01'
          date_end: ''
        #   description: |2-
        - title: Senior Research Fellow
          company: University College London
          advisors: with Tim Behrens and Thomas Mrsic-Flogel 
          company_url: 'https://www.sainsburywellcome.org/'
        #   company_logo: org-gc
          location: London, UK
          date_start: '2023-02-01'
          date_end: '2026-06-30'
        #   description: |2-
            
        - title: Ph.D. in Quantitative and Computational Neuroscience
          advisors: with Carlos Brody 
          company: Princeton University
          company_url: 'https://pni.princeton.edu/'
          company_logo: 
          location: NJ, USA
          date_start: '2017-09-01'
          date_end: '2023-01-01'
        #   description: Taught electronic engineering and researched semiconductor physics.

        - title: M.A. in Neuroscience
          company: Princeton University
          company_url: 'https://pni.princeton.edu/'
          company_logo: 
          location: NJ, USA
          date_start: '2015-09-01'
          date_end: '2017-09-01'
        #   description: Taught electronic engineering and researched semiconductor physics.

        - title: B.Tech. in Bioengineering
          company: Indian Institute of Technology Kanpur
          company_url: 'https://www.iitk.ac.in/'
          company_logo: 
          location: UP, India 
          date_start: '2011-07-01'
          date_end: '2015-07-01'
        #   description: Taught electronic engineering and researched semiconductor physics.

    design:
      columns: '2'

  # PROJECTS - a 2x2 of substrate against question. The grid is drawn by
  # layouts/partials/blocks/proj_matrix.html; each card's title, blurb and
  # thumbnail come from the project page itself (its `title`, `summary` and
  # featured image), so edit those in content/project/<slug>/index.md.
  - block: proj_matrix
    id: projects
    content:
      title: Projects
    design:
      columns: '1'

  # PUBLICATIONS - four groups stacked under the #publications anchor.
  # publication_type: '3' Preprint | '2' Journal article | '1' Conference paper
  # (type '1' is relabelled "Conference abstract" in i18n/en.yaml, since these
  #  are non-archival abstracts rather than archival conference papers.)
  - block: collection
    id: publications
    content:
      title: Blogposts
      count: 0
      filters:
        folders:
          - post
    design:
      columns: '2'
      view: compact

  - block: collection
    id: publications-peer-reviewed
    content:
      title: Peer-reviewed publications
      count: 0
      filters:
        folders:
          - publication
        publication_type: '2'
    design:
      columns: '2'
      view: compact

  - block: collection
    id: publications-preprints
    content:
      title: Preprints
      count: 0
      filters:
        folders:
          - publication
        publication_type: '3'
    design:
      columns: '2'
      view: compact

  - block: markdown
    id: teaching
    content:
      title: Organising & Teaching
      subtitle:
      text: |-
        <div class="card card-body subsection-card">

        #### Organising

        * **2026** <span class="row-body">[Barcelona Advanced Modeling of Behavior](https://www.bambschool.org/) (BAMB!) summer school, Barcelona - *organiser*</span>
        * **2026** <span class="row-body">[Replaying the future: neural mechanisms of generative replay](https://www.cosyne.org/workshops-program) - COSYNE 2026 workshop, *co-organiser* with Kristopher Jensen and Eleanor Spens</span>
        * **2024–25** <span class="row-body">[Emerging Neuroscientists Seminar Series](https://www.sainsburywellcome.org/content/emerging-neuroscientists-seminar-series-enss) (ENSS), Sainsbury Wellcome Centre - *organiser*</span>

        </div>

        <div class="card card-body subsection-card">

        #### Teaching

        * **2024–25** <span class="row-body">[Barcelona Advanced Modeling of Behavior](https://www.bambschool.org/) (BAMB!) summer school, Barcelona - *teaching assistant*</span>
        * **2023** <span class="row-body">[Neuromatch Academy](https://compneuro.neuromatch.io/), computational neuroscience track - *project mentor*</span>
        * **2021** <span class="row-body">[Neuromatch Academy](https://compneuro.neuromatch.io/), computational neuroscience track - *project TA* for 11 student teams</span>
        * **2017** <span class="row-body">Introduction to Neuroscience (NEU 175, undergraduate), Princeton University - *teaching assistant*</span>
        * **2016** <span class="row-body">Introduction to Neuroscience (NEU 501A, graduate), Princeton University - *teaching assistant*</span>

        </div>
    design:
        columns: '2'

  - block: markdown
    id: talks
    content:
      title: Talks
      subtitle: 
      text: |-
        * **Aug 2026** <span class="row-body">Pivotal Spotlight, London Initiative for Safe AI (LISA) <span class="tag-row"><span class="kind-tag k-selected">selected</span> <a class="proj-tag t-repr" href="/project/llm-representation-structure/">representation structure</a></span></span>
        * **Aug 2026** <span class="row-body">Pivotal Lightning talk, UK AISI <span class="tag-row"><span class="kind-tag k-selected">selected</span> <a class="proj-tag t-repr" href="/project/llm-representation-structure/">representation structure</a></span></span>
        * **May 2026** <span class="row-body">Symposium on Biology of Decision Making (SBDM), Paris <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-decision" href="/project/sequential-decision-making/">failure modes</a></span></span>
        * **Mar 2026** <span class="row-body">IDIBAPS - Institut d’Investigacions Biomèdiques August Pi i Sunyer, Barcelona <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Dec 2025** <span class="row-body">AI Research Afternoon, Faculty of Life Sciences, University College London <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Nov 2025** <span class="row-body">Minisymposium, Society for Neuroscience annual meeting <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Nov 2023** <span class="row-body">Colloquium, Leiden Institute for Brain and Cognition, Leiden University <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-decision" href="/project/sequential-decision-making/">failure modes</a></span></span>
        * **Oct 2023** <span class="row-body">Society for Neuroeconomics annual meeting <span class="tag-row"><span class="kind-tag k-selected">selected</span> <span class="award-tag">Travel Award</span> <a class="proj-tag t-decision" href="/project/sequential-decision-making/">failure modes</a></span></span>
        * **Oct 2023** <span class="row-body">Brain Stories Live, Episode 18: Neuro AI - public panel at the Bloomsbury Theatre, with Rick Adams and Benedetto De Martino <span class="tag-row"><span class="kind-tag k-panel">panel</span> <a class="link-tag" href="https://open.spotify.com/episode/4NAcwrubS8vw8IL1zqs7cf" target="_blank" rel="noopener">listen</a></span></span>
        * **Sep 2023** <span class="row-body">Analytical Connectionism Workshop, Gatsby Computational Neuroscience Unit <span class="tag-row"><span class="kind-tag k-selected">selected</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Mar 2023** <span class="row-body">Computational and Systems Neuroscience (COSYNE) conference <span class="tag-row"><span class="kind-tag k-selected">selected</span> <span class="note-tag">top 3% of abstracts</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **June 2022** <span class="row-body">Reinforcement Learning and Decision Making (RLDM) conference <span class="tag-row"><span class="kind-tag k-selected">selected</span> <span class="award-tag">Best Paper Award</span> <a class="proj-tag t-decision" href="/project/sequential-decision-making/">failure modes</a></span></span>
        * **May 2022** <span class="row-body">Annual retreat, Princeton Neuroscience Institute <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Apr 2022** <span class="row-body">Center for Neural Science, New York University <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Mar 2022** <span class="row-body">Computational Cognitive Neuroscience seminar, UMC Hamburg-Eppendorf <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-decision" href="/project/sequential-decision-making/">failure modes</a></span></span>
        * **Mar 2022** <span class="row-body">HHMI Janelia Research Campus <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
        * **Oct 2021** <span class="row-body">Experimental Psychology seminar, Bolivian Catholic University <span class="tag-row"><span class="kind-tag k-invited">invited</span> <a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a></span></span>
    design:
        columns: '2'
---
