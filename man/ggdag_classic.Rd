% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggdag.R
\name{ggdag_classic}
\alias{ggdag_classic}
\title{Quickly plot a DAG in ggplot2}
\usage{
ggdag_classic(
  .tdy_dag,
  ...,
  size = 8,
  label_rect_size = NULL,
  text_label = "name",
  text_col = "black"
)
}
\arguments{
\item{.tdy_dag}{input graph, an object of class \code{tidy_dagitty} or
\code{dagitty}}

\item{...}{additional arguments passed to \code{tidy_dagitty()}}

\item{size}{text size, with a default of 8.}

\item{label_rect_size}{specify the \code{fontsize} argument in
\code{ggraph::label_rect}; default is \code{NULL}, in which case it is
scaled relative ti \code{size}}

\item{text_label}{text variable, with a default of "name"}

\item{text_col}{text color, with a default of "black"}
}
\value{
a \code{ggplot}
}
\description{
\code{ggdag_classic()} is a wrapper to quickly plot DAGs in a more
traditional style.
}
\examples{

dag <- dagify(
  y ~ x + z2 + w2 + w1,
  x ~ z1 + w1,
  z1 ~ w1 + v,
  z2 ~ w2 + v,
  w1 ~ ~w2
)

ggdag_classic(dag)
ggdag_classic(dag) + theme_dag_blank()

ggdag_classic(dagitty::randomDAG(5, .5))

}
\seealso{
\code{\link[=ggdag]{ggdag()}}
}
