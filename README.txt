# Purpose

This is a wrapper package for easily creating and visualizing Thin Plate Regression Splines

- The URL to the GitHub (i.e., the source code) is: https://github.com/SamHero16/EasyTPRS.561final
- The URL to the Pkgdown webpage is: https://samhero16.github.io/EasyTPRS.561final/

# How to install
This package is called `EasyTPRS.561final`. To install, run the following code (in R):

```R
library(devtools)
devtools::install_github("sherold/EasyTPRS.561final")
```

Upon completion, you can run the following code (in R):
```R
library(EasyTPRS.561final)
EasyTPRS.561final::create_n_2D_TPRS(128, .1, 10)
```

# Dependencies

The package depends on the following packages: 'spectralGP', 'mgcv', 'ggplot2', 'tidyr', 'dplyr'

# Session info

This package was developed in the following environment
```R
> devtools::session_info()
─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 setting  value
 version  R version 4.3.0 (2023-04-21)
 os       macOS 14.4.1
 system   aarch64, darwin20
 ui       RStudio
 language (EN)
 collate  en_US.UTF-8
 ctype    en_US.UTF-8
 tz       America/Los_Angeles
 date     2025-06-05
 rstudio  2023.03.1+446 Cherry Blossom (desktop)
 pandoc   2.19.2 @ /Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/ (via rmarkdown)

─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 package           * version date (UTC) lib source
 backports           1.4.1   2021-12-13 [1] CRAN (R 4.3.0)
 broom             * 1.0.4   2023-03-11 [1] CRAN (R 4.3.0)
 cachem              1.1.0   2024-05-16 [1] CRAN (R 4.3.3)
 cli                 3.6.5   2025-04-23 [1] CRAN (R 4.3.3)
 colorspace          2.1-0   2023-01-23 [1] CRAN (R 4.3.0)
 devtools            2.4.5   2022-10-11 [1] CRAN (R 4.3.0)
 digest              0.6.36  2024-06-23 [1] CRAN (R 4.3.3)
 dplyr             * 1.1.2   2023-04-20 [1] CRAN (R 4.3.0)
 EasyTPRS.561final * 0.1.0   2025-06-05 [1] local
 ellipsis            0.3.2   2021-04-29 [1] CRAN (R 4.3.0)
 evaluate            0.21    2023-05-05 [1] CRAN (R 4.3.0)
 fansi               1.0.4   2023-01-22 [1] CRAN (R 4.3.0)
 fastmap             1.2.0   2024-05-15 [1] CRAN (R 4.3.3)
 fs                  1.6.2   2023-04-25 [1] CRAN (R 4.3.0)
 generics            0.1.3   2022-07-05 [1] CRAN (R 4.3.0)
 ggplot2           * 3.5.1   2024-04-23 [1] CRAN (R 4.3.1)
 glue                1.6.2   2022-02-24 [1] CRAN (R 4.3.0)
 gtable              0.3.3   2023-03-21 [1] CRAN (R 4.3.0)
 htmltools           0.5.8.1 2024-04-04 [1] CRAN (R 4.3.1)
 htmlwidgets         1.6.4   2023-12-06 [1] CRAN (R 4.3.1)
 httpuv              1.6.15  2024-03-26 [1] CRAN (R 4.3.1)
 knitr               1.48    2024-07-07 [1] CRAN (R 4.3.3)
 later               1.3.2   2023-12-06 [1] CRAN (R 4.3.1)
 lattice             0.21-8  2023-04-05 [1] CRAN (R 4.3.0)
 lifecycle           1.0.4   2023-11-07 [1] CRAN (R 4.3.3)
 magrittr            2.0.3   2022-03-30 [1] CRAN (R 4.3.0)
 Matrix              1.5-4   2023-04-04 [1] CRAN (R 4.3.0)
 memoise             2.0.1   2021-11-26 [1] CRAN (R 4.3.0)
 mgcv              * 1.8-42  2023-03-02 [1] CRAN (R 4.3.0)
 mime                0.12    2021-09-28 [1] CRAN (R 4.3.0)
 miniUI              0.1.1.1 2018-05-18 [1] CRAN (R 4.3.0)
 munsell             0.5.0   2018-06-12 [1] CRAN (R 4.3.0)
 nlme              * 3.1-168 2025-03-31 [1] CRAN (R 4.3.3)
 pillar              1.9.0   2023-03-22 [1] CRAN (R 4.3.0)
 pkgbuild            1.4.4   2024-03-17 [1] CRAN (R 4.3.1)
 pkgconfig           2.0.3   2019-09-22 [1] CRAN (R 4.3.0)
 pkgload             1.4.0   2024-06-28 [1] CRAN (R 4.3.3)
 profvis             0.3.8   2023-05-02 [1] CRAN (R 4.3.0)
 promises            1.3.0   2024-04-05 [1] CRAN (R 4.3.1)
 purrr               1.0.1   2023-01-10 [1] CRAN (R 4.3.0)
 R6                  2.5.1   2021-08-19 [1] CRAN (R 4.3.0)
 Rcpp                1.0.13  2024-07-17 [1] CRAN (R 4.3.3)
 remotes             2.5.0   2024-03-17 [1] CRAN (R 4.3.1)
 rlang               1.1.6   2025-04-11 [1] CRAN (R 4.3.3)
 rmarkdown           2.27    2024-05-17 [1] CRAN (R 4.3.3)
 rstudioapi          0.16.0  2024-03-24 [1] CRAN (R 4.3.1)
 scales              1.3.0   2023-11-28 [1] CRAN (R 4.3.1)
 sessioninfo         1.2.2   2021-12-06 [1] CRAN (R 4.3.0)
 shiny               1.9.0   2024-07-29 [1] CRAN (R 4.3.3)
 spectralGP        * 1.3.3   2015-07-01 [1] CRAN (R 4.3.0)
 stringi             1.7.12  2023-01-11 [1] CRAN (R 4.3.0)
 stringr             1.5.0   2022-12-02 [1] CRAN (R 4.3.0)
 tibble              3.2.1   2023-03-20 [1] CRAN (R 4.3.0)
 tidyr               1.3.0   2023-01-24 [1] CRAN (R 4.3.0)
 tidyselect          1.2.1   2024-03-11 [1] CRAN (R 4.3.1)
 urlchecker          1.0.1   2021-11-30 [1] CRAN (R 4.3.0)
 usethis             3.1.0   2024-11-26 [1] CRAN (R 4.3.3)
 utf8                1.2.3   2023-01-31 [1] CRAN (R 4.3.0)
 vctrs               0.6.5   2023-12-01 [1] CRAN (R 4.3.1)
 withr               2.5.0   2022-03-03 [1] CRAN (R 4.3.0)
 xfun                0.52    2025-04-02 [1] CRAN (R 4.3.3)
 xtable              1.8-4   2019-04-21 [1] CRAN (R 4.3.0)
 yaml                2.3.7   2023-01-23 [1] CRAN (R 4.3.0)

 [1] /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
