% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rasterConcentrationResponse.R
\name{rasterConcentrationResponse}
\alias{rasterConcentrationResponse}
\title{rasterConcentrationResponse}
\usage{
rasterConcentrationResponse(conc, popr, base.conc, fun.form = c("linear",
  "log-linear")[1], beta = NULL, RR = NULL, delta = 10, cases = NULL,
  incidence.rate = NULL, est = c("low estimate", "cental estimate",
  "high estimate"), outcomename = NULL, pollutantname = NULL,
  unit.cost = NULL, costing.var = NULL, risk.only = FALSE,
  out = c("all", "popr", "d", "conc", "RR", "AF", "AM")[1], verbose = FALSE,
  debug = TRUE)
}
\arguments{
\item{conc}{A raster of concentration values}

\item{popr}{A raster of population numbers}

\item{base.conc}{A scalar giving the base concentration of the pollutant}

\item{fun.form}{The from of the concentration response function. 
Currently supports "linear"(default) and "log-linear"}

\item{beta}{The Beta values from the original regression model from which the CRF is derived.
Defaults to NULL. If NULL it is calculated from RR  and delta ( beta = log(RR)/delta )}

\item{RR}{The relative risk associated with an concentration increase of delta}

\item{delta}{The concentration difference for which RR is defined. Defaults to 10}

\item{cases}{A raster containing the number of cases of the outcome of concern in the population.}

\item{incidence.rate}{The incidence rate of the outcome of concern.}

\item{est}{The type of estimate that the values of RR represent. 
e.g. c("low estimate","cental estimate","high estimate"). Must be the same length as RR}

\item{outcomename}{User specified name of the outcome. Default NULL}

\item{pollutantname}{User specified name of the pollutant. Default NULL,}

\item{unit.cost}{The cost of the outcome per case}

\item{costing.var}{The name of the varible containing the unit cost}

\item{verbose}{Do you want to be anoyed with a lot of messaged}

\item{debug}{Set to TRUE if the function misbehaves so you can see whats going on}
}
\description{
Excecute a concentration response function on rasterised input data
}
\details{
polluntant This is used to match the name of the pollutant in the concentration raster 
with that in the concentration response information (typically given as a sicklist)
}
\examples{
cases = people$total * rnorm(n = ncell(people), mean = 0.01, sd = 0.003)
}

