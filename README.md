# Paxlovid and Post-Acute Sequelae of COVID-19 (PASC) Study

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.XXXXXXX.svg)](https://doi.org/10.5281/zenodo.XXXXXXX)


## Overview

This repository contains the analysis code for the study:

**"Organ-Specific Effects of Paxlovid on Post-Acute Sequelae of COVID-19 (PASC): A Retrospective Cohort Study"**

### Abstract

The impact of antiviral therapies, including Paxlovid, on post-acute sequelae of COVID-19 (PASC) remains inconclusive. We analyzed data from 19,413 patients (age > 18) from a validated PASC research cohort in New England who experienced at least one COVID-19 infection episode between January 1, 2022, and June 7, 2022, totaling 22,094 episodes. Multivariable logistic regression with inverse probability weights was used to infer the causal effects of Paxlovid treatment during acute infection on the risk of PASC overall (primary outcome), stratified by age group and organ system.

Across all age groups, Paxlovid shows no statistically significant effect in lowering overall PASC risk. Stratification by organ system reveals a 37% reduction in gastrointestinal PASC (OR: 0.63; 95% CI: [0.468, 0.850]; p < 0.05) but a 97.4% increase in the risk of eye and ear-related PASC (OR: 1.974; 95% CI: [1.048, 3.718]; p < 0.05). Among patients aged 65 to 75 years who were not hospitalized, Paxlovid is associated with a 16.8% reduction in PASC risk (OR: 0.832; 95% CI: [0.7, 0.989]; p < 0.05).

These findings highlight the complexity of antiviral therapy's long-term impact and underscore the need for further research to clarify the mechanisms underlying these outcomes.

## Repository Contents

| File | Description |
|------|-------------|
| `pax_glm_OR_final.R` | Main analysis script: multivariable logistic regression with inverse probability weighting for PASC outcome modeling |

## Requirements

- R (≥ 4.0)
- Required R packages (update to match your actual dependencies):
  - `tidyverse`
  - `WeightIt`
  - `survey`
  - `tableone`

## Data Availability

Data used in this study are derived from the Mass General Brigham electronic health record system and are not publicly available due to patient privacy restrictions (IRB approval required).

## Author

Cheng J, Azhir A, Estiri H. 


## License
MIT License

Copyright (c) 2024 Alaleh Azhir, Jingya Cheng, Hossein Estiri

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

