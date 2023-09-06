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
          company: Sainsbury Wellcome Centre, UCL
          advisors: with Tim Behrens and Thomas Mrsic-Flogel 
          company_url: ''
        #   company_logo: org-gc
          location: London, UK
          date_start: '2023-02-01'
          date_end: ''
        #   description: |2-
            
        - title: Ph.D. in Quantitative and Computational Neuroscience
          advisors: with Carlos Brody 
          company: Princeton University
          company_url: ''
          company_logo: 
          location: NJ, USA
          date_start: '2017-09-01'
          date_end: '2023-01-01'
        #   description: Taught electronic engineering and researched semiconductor physics.

        - title: M.A. in Neuroscience
          company: Princeton University
          company_url: ''
          company_logo: 
          location: NJ, USA
          date_start: '2015-09-01'
          date_end: '2017-09-01'
        #   description: Taught electronic engineering and researched semiconductor physics.

        - title: B.Tech. in Bioengineering
          company: Indian Institute of Technology Kanpur
          company_url: ''
          company_logo: 
          location: UP, India 
          date_start: '2011-07-01'
          date_end: '2015-07-01'
        #   description: Taught electronic engineering and researched semiconductor physics.

    design:
      columns: '2'







#   - block: portfolio
#     id: projects
#     content:
#       title: Projects
#       filters:
#         folders:
#           - project
#       # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
#       default_button_index: 0
#       # Filter toolbar (optional).
#       # Add or remove as many filters (`filter_button` instances) as you like.
#       # To show all items, set `tag` to "*".
#       # To filter by a specific tag, set `tag` to an existing tag name.
#       # To remove the toolbar, delete the entire `filter_button` block.
#       buttons:
#         - name: All
#           tag: '*'
#         - name: Deep Learning
#           tag: Deep Learning
#         - name: Other
#           tag: Demo
#     design:
#       # Choose how many columns the section has. Valid values: '1' or '2'.
#       columns: '1'
#       view: showcase
#       # For Showcase view, flip alternate rows?
#       flip_alt_rows: false


#   - block: collection
#     id: featured
#     content:
#       title: Featured Publications
#       filters:`
#         folders:
#           - publication
#         featured_only: true
#     design:
#       columns: '2'
#       view: card
  - block: collection
    id: publications
    content:
      title: Recent Publications
      filters:
        folders:
          - publication
        exclude_featured: false
    design:
      columns: '2'
      view: compact

#   - block: collection
#     id: talks
#     content:
# #       title: Recent & Upcoming Talks
#         text: |-
#         {{% callout note %}}
#         Quickly discover relevant content by [filtering publications](./publication/).
#         {{% /callout %}}
#       disable_links: false
#       filters:
#         folders:
#           - talks
#     design:
#       columns: '2'
#       view: list

  - block: markdown
    id: talks
    content:
      title: Upcoming & Recent Talks
      subtitle: 
      text: |- 
        * **Nov 2023** &emsp;Leiden Institute for Brain and Cognition colloquium @ Leiden University
        * **Oct 2023** &emsp; Society for Neuroeconomics conference 2023
        ***Travel Award***
        * **Sep 2023** &emsp; Gatsby Analytical Connectionism Workshop
        * **Mar 2023** &emsp; [Computational and Systems Neuroscience (COSYNE)](https://www.youtube.com/live/h7kqB-oqeYI?si=mMnNwmWV82T8bIUC&t=3149) conference
        * **June 2022** &ensp; Sainsbury Wellcome Centre, University College London
        * **June 2022** &ensp; [Reinforcement Learning and Decision-making conference](https://brown.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=947eba80-da6a-45dd-b9d2-aebd00d55451) ***Best Paper Award***
        * **May 2022** &emsp; Princeton Neuroscience Institute annual retreat
        * **Apr 2022** &emsp; Center for Neural Science, New York University
        * **Mar 2022** &emsp; Computational Cognitive Neuroscience seminar @ UMC Hamburg-Eppendorf
        * **Mar 2022** &emsp;Janelia Research Campus
        * **Oct 2021** &emsp; Experimental Psychology seminar @ Bolivian Catholic University
    design:
        columns: '2'

#   - block: markdown
#     id: section-2
#     content:
#       title: Section 2
#       subtitle: A subtitle
#       text: Add your Section 2 content here...







#   - block: features
#     content:
#       title: Skills
#       items:
#         - name: R
#           description: 90%
#           icon: r-project
#           icon_pack: fab
#         - name: Statistics
#           description: 100%
#           icon: chart-line
#           icon_pack: fas
#         - name: Photography
#           description: 10%
#           icon: camera-retro
#           icon_pack: fas
    #   - block: tag_cloud
    #     content:
    #       title: Popular Topics
    #     design:
    #       columns: '2'
#   - block: contact
#     id: contact
#     content:
#       title: Contact
#       subtitle:
#       text: |-
#         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mi diam, venenatis ut magna et, vehicula efficitur enim.
#       # Contact (add or remove contact options as necessary)
#       email: test@example.org
#       phone: 888 888 88 88
#       appointment_url: 'https://calendly.com'
#       address:
#         street: 450 Serra Mall
#         city: Stanford
#         region: CA
#         postcode: '94305'
#         country: United States
#         country_code: US
#       directions: Enter Building 1 and take the stairs to Office 200 on Floor 2
#       office_hours:
#         - 'Monday 10:00 to 13:00'
#         - 'Wednesday 09:00 to 10:00'
#       contact_links:
#         - icon: twitter
#           icon_pack: fab
#           name: DM Me
#           link: 'https://twitter.com/Twitter'
#         - icon: skype
#           icon_pack: fab
#           name: Skype Me
#           link: 'skype:echo123?call'
#         - icon: video
#           icon_pack: fas
#           name: Zoom Me
#           link: 'https://zoom.com'
#       # Automatically link email and phone or display as text?
#       autolink: true
#       # Email form provider
#       form:
#         provider: netlify
#         formspree:
#           id:
#         netlify:
#           # Enable CAPTCHA challenge to reduce spam?
#           captcha: false
    # design:
    #   columns: '2'
#   - block: collection
#     id: posts
#     content:
#       title: Recent Posts
#       subtitle: ''
#       text: ''
#       # Choose how many pages you would like to display (0 = all pages)
#       count: 5
#       # Filter on criteria
#       filters:
#         folders:
#           - post
#         author: ""
#         category: ""
#         tag: ""
#         exclude_featured: false
#         exclude_future: false
#         exclude_past: false
#         publication_type: ""
#       # Choose how many pages you would like to offset by
#       offset: 0
#       # Page order: descending (desc) or ascending (asc) date.
#       order: desc
#     design:
#       # Choose a layout view
#       view: compact
#       columns: '2'
#   - block: markdown
#     content:
#       title: Recent talks
#       subtitle: ''
#       text: |-
#         {{< gallery album="demo" >}}
#     design:
#       columns: '1'


#   - block: accomplishments
#     content:
#       # Note: `&shy;` is used to add a 'soft' hyphen in a long heading.
#       title: 'Accomplish&shy;ments'
#       subtitle:
#       # Date format: https://wowchemy.com/docs/customization/#date-format
#       date_format: Jan 2006
#       # Accomplishments.
#       #   Add/remove as many `item` blocks below as you like.
#       #   `title`, `organization`, and `date_start` are the required parameters.
#       #   Leave other parameters empty if not required.
#       #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
#       items:
#         - certificate_url: https://www.coursera.org
#           date_end: ''
#           date_start: '2021-01-25'
#           description: ''
#           organization: Coursera
#           organization_url: https://www.coursera.org
#           title: Neural Networks and Deep Learning
#           url: ''
#         - certificate_url: https://www.edx.org
#           date_end: ''
#           date_start: '2021-01-01'
#           description: Formulated informed blockchain models, hypotheses, and use cases.
#           organization: edX
#           organization_url: https://www.edx.org
#           title: Blockchain Fundamentals
#           url: https://www.edx.org/professional-certificate/uc-berkeleyx-blockchain-fundamentals
#         - certificate_url: https://www.datacamp.com
#           date_end: '2020-12-21'
#           date_start: '2020-07-01'
#           description: ''
#           organization: DataCamp
#           organization_url: https://www.datacamp.com
#           title: 'Object-Oriented Programming in R'
#           url: ''
#     design:
#       columns: '2'
---
