# Paxlovid and Post-Acute Sequelae of COVID-19 (PASC) Study

[![DOI](https://zenodo.org/badge/912972517.svg)](https://doi.org/10.5281/zenodo.18749574)


## Overview

This repository contains the analysis code for the study:

**"Organ-Specific Effects of Paxlovid on Post-Acute Sequelae of COVID-19 (PASC): A Retrospective Cohort Study"**

This repository contains analysis code for a retrospective cohort study examining the effects of Paxlovid on post-acute sequelae of COVID-19 (PASC). Using electronic health record data from a validated PASC research cohort in New England, we applied multivariable logistic regression with inverse probability weighting to estimate the causal effects of Paxlovid treatment during acute COVID-19 infection on subsequent PASC risk, stratified by age group and organ system.
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

