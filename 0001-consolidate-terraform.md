# [short title of solved problem and solution]

* Status: proposed
* Deciders: @ZavenArra, Peter Willis, Tuan-Ahn Nguyen, MattK
* Date: 2022-03-01 

Technical Story: Where shoud our terraform code be located? 

## Context and Problem Statement

Current terraform is spread through the treetracker-infrastructure repository.  We want to consolidate this IaC in a way that makes it easy to to find and easy for new volunteers to contribute to.  We don't want other kinds of infra codes, such as scripts or deployment jobs, to create extra mental overhead. 


## Decision Drivers <!-- optional -->

* Clean organizational strategy
* Ease in which new volunteers (some rather junior) can find terraform codes
* Ease in which new volunteers can contribute or create new modules

## Considered Options

* Create a repository just for terraform and related utility scripts
* Organize treetracker-infrastructure in subfolders: terraform, application platform, utilitis

## Decision Outcome

No choice yet

Chosen option: "[option 1]", because [justification. e.g., only option, which meets k.o. criterion decision driver | which resolves force force | … | comes out best (see below)].

### Positive Consequences <!-- optional -->

* [e.g., improvement of quality attribute satisfaction, follow-up decisions required, …]
* …

### Negative Consequences <!-- optional -->

* [e.g., compromising quality attribute, follow-up decisions required, …]
* …

## Pros and Cons of the Options <!-- optional -->

### [option 1]

* Good, because it keeps with one repository - one purpose
* Bad, because dependencies with application platform servic deployments are cross repository

### [option 2]

* Good, because we do not create an extra repository


