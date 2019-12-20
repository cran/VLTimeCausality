Variable-Lag Time Series Causality Inference Framework (VLTimeSeriesCausality)
===========================================================
[![Travis CI build status](https://travis-ci.com/DarkEyes/VLTimeSeriesCausality.svg?branch=master)](https://travis-ci.com/DarkEyes/VLTimeSeriesCausality/)
[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.5.0-6666ff.svg)](https://cran.r-project.org/)
[![License](https://img.shields.io/badge/License-GPL%203-orange.svg)](https://spdx.org/licenses/GPL-3.0-only.html)

A framework to infer causality on a pair of time series of real numbers based on Variable-lag Granger causality (VL-Granger) and transfer entropy (VL-Transfer Entropy).

Typically, Granger causality and transfer entropy have an assumption of a fixed and constant time delay between the cause and effect. However, for a non-stationary time series, this assumption is not true. For example, considering two time series of velocity of person A and person B where B follows A. At some time, B stops tying his shoes, then running to catch up A. The fixed-lag assumption is not true in this case.

We propose a framework that allows variable-lags between cause and effect in Granger causality and transfer entropy to allow them to deal with variable-lag non-stationary time series. 

Installation
------------

For the newest version on github, please call the following command in R terminal.

``` r
remotes::install_github("DarkEyes/VLTimeSeriesCausality")
```
This requires a user to install the "remotes" package before installing VLTimeSeriesCausality.

Example: Inferred VL-Granger causality time series
----------------------------------------------------------------------------------
In the first step, we generate time series  TS$X and TS$Y where TS$X causes TS$Y with variable-lags.
``` r
library(VLTimeSeriesCausality)
# Generate simulation data
TS <- VLTimeCausality::SimpleSimulationVLtimeseries()
```

We can plot time series using the following function.
```r
VLTimeCausality::plotTimeSeries(TS$X,TS$Y)
```
A sample of generated time series pair that has a causal relation is plotted below:  

<img src="https://github.com/DarkEyes/VLTimeSeriesCausality/blob/master/man/FIG/TSsample.png" width="550">

We use the following function to infer whether X causes Y.
``` r
# Run the function
out<-VLTimeCausality::VLGrangerFunc(Y=TS$Y,X=TS$X)
```
The result of Granger causality is below:

```r
out$BICDiffRatio
[1] 0.8882051

out$XgCsY
[1] TRUE
```



Citation
----------------------------------------------------------------------------------
Chainarong Amornbunchornvej, Elena Zheleva, and Tanya Berger-Wolf (2019). Variable-lag Granger Causality for Time Series Analysis. In Proceedings of the 6th IEEE International Conference on Data Science and Advanced Analytics (DSAA), pp. 21-30. IEEE. <a href="https://www.cs.uic.edu/~elena/pubs/amornbunchornvej-dsaa19.pdf">link</a>

Contact
----------------------------------------------------------------------------------
- Developer: C. Amornbunchornvej<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0003-3131-0370" href="https://orcid.org/0000-0003-3131-0370" target="orcid.widget" rel="noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">https://orcid.org/0000-0003-3131-0370</a></div>
- <a href="https://www.nectec.or.th/en/research/dsaru/dsarg-sai.html">Strategic Analytics Networks with Machine Learning and AI (SAI)</a>, <a href="https://www.nectec.or.th/en/">NECTEC</a>, Thailand
- Homepage: <a href="https://sites.google.com/view/amornbunchornvej/home">Link</a>