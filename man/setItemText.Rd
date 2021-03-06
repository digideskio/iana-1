% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/itemanalysis.R
\name{setItemText}
\alias{setItemText}
\title{Associate Text with Variables}
\usage{
setItemText(x, items = NULL)
}
\arguments{
\item{x}{a data frame}

\item{items}{either a character vector containing the descriptions of the items (columns in the data frame) or the name of a file containing the descriptions for the items. If a file name is given, each of the descriptions must occupy one line and each item in the data frame must have a description.}
}
\value{
A data frame with the \code{item.text} attribute set for variable.
}
\description{
\code{setItemText} can be used to associate text (usually the item stem or a description of it) with the variables (items) in a data frame.
}
\details{
Technically, \code{setItemText} sets the \code{item.text} attribute for the variables (items) in a data frame, which corresponds to "variable labels" known form other statistical systems. This text is then displayed along with the variable name in functions such as \code{\link{classifyItems}} as a mnemonic for the content of the item.

The text can be specified either as a character vector of the same length as the number of the columns in the data frame or in a text file that contains the descriptions of the items. The file is read via \code{\link{read.table}}, with the separator set to a newline character (i.e., \code{"\n"}) Consequently, each description must occupy exactly one physical line (which may, of course, span several display lines). The number of descriptions in the file and the number of items must be the same.

Notice that attributes are lost when data frames are subsettetted via \code{\link{subset}}. For preserving the \code{item.text} attribute, \code{\link[dplyr]{select}} or \code{\link[dplyr]{filter}} can be used instead of \code{\link{subset}}.
}
\author{
Michael Hock \email{michael.hock@uni-bamberg.de}
}
\seealso{
\code{\link{getItemText}} for retrieving \code{item.text} attributes.
}

