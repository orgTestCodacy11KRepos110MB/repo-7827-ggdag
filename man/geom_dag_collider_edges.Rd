% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_dag.R
\name{geom_dag_collider_edges}
\alias{geom_dag_collider_edges}
\title{Edges for paths activated by stratification on colliders}
\usage{
geom_dag_collider_edges(
  mapping = NULL,
  data = NULL,
  stat = "identity",
  position = "identity",
  ...,
  linewidth = 0.6,
  size = NULL,
  curvature = 0.5,
  angle = 90,
  ncp = 5,
  arrow = NULL,
  lineend = "butt",
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}}. If specified and
\code{inherit.aes = TRUE} (the default), it is combined with the default mapping
at the top level of the plot. You must supply \code{mapping} if there is no plot
mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{stat}{The statistical transformation to use on the data for this
layer, either as a \code{ggproto} \code{Geom} subclass or as a string naming the
stat stripped of the \code{stat_} prefix (e.g. \code{"count"} rather than
\code{"stat_count"})}

\item{position}{Position adjustment, either as a string naming the adjustment
(e.g. \code{"jitter"} to use \code{position_jitter}), or the result of a call to a
position adjustment function. Use the latter if you need to change the
settings of the adjustment.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{linewidth}{a numeric vector of length 1. Edge width}

\item{size}{deprecated. Please use \code{linewidth}.}

\item{curvature}{A numeric value giving the amount of curvature.
    Negative values produce left-hand curves, positive values
    produce right-hand curves, and zero produces a straight line.}

\item{angle}{A numeric value between 0 and 180,
    giving an amount to skew the control
    points of the curve.  Values less than 90 skew the curve towards
    the start point and values greater than 90 skew the curve
    towards the end point.}

\item{ncp}{The number of control points used to draw the curve.
    More control points creates a smoother curve.}

\item{arrow}{specification for arrow heads, as created by \code{\link[grid:arrow]{grid::arrow()}}.}

\item{lineend}{Line end style (round, butt, square).}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}
}
\description{
Adjusting for a collider activates pathways between the parent of the
collider. This geom adds a curved edge between any such parent nodes.
}
\examples{
library(dagitty)
library(ggplot2)
dagify(m ~ a + b, x ~ a, y ~ b) \%>\%
  tidy_dagitty() \%>\%
  control_for("m") \%>\%
  ggplot(aes(x = x, y = y, xend = xend, yend = yend, shape = adjusted)) +
  geom_dag_edges() +
  geom_dag_collider_edges() +
  geom_dag_point() +
  geom_dag_text() +
  theme_dag() +
  scale_adjusted()
}
