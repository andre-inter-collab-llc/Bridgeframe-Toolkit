# Analysis Scripts

This directory contains R and Python scripts for data analysis examples used in the Bridgeframe Toolkit.

## Contents

- `epi_examples.R`: Epidemiological analysis examples (incidence rates, survival analysis)
- `data_quality.R`: Data quality assessment scripts
- `visualizations.R`: Chart and dashboard examples

## Requirements

### R Packages
```r
install.packages(c("tidyverse", "survival", "epitools", "here", "ggplot2"))
```

### Python Packages
```bash
pip install pandas numpy matplotlib seaborn
```

## Usage

Scripts reference sample data in `../data/cancersurv/`. Run from project root using the `here` package for path management.
