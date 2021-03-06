% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gs_delete.R
\name{gs_delete}
\alias{gs_delete}
\title{Delete a spreadsheet}
\usage{
gs_delete(ss, verbose = TRUE)
}
\arguments{
\item{ss}{a registered Google spreadsheet, i.e. a \code{\link{googlesheet}}
object}

\item{verbose}{logical; do you want informative messages?}
}
\value{
logical indicating if the deletion was successful
}
\description{
Move a spreadsheet to trash on Google Drive. You must own a sheet in order to
move it to the trash. If you try to delete a sheet you do not own, a 403
Forbidden HTTP status code will be returned; third party spreadsheets can
only be moved to the trash manually in the web browser (which only removes
them from your Google Sheets home screen, in any case). If you trash a
spreadsheet that is shared with others, it will no longer appear in any of
their Google Drives. If you delete something by mistake, remain calm, and
visit the \href{https://drive.google.com/drive/#trash}{trash in Google
Drive}, find the sheet, and restore it.
}
\examples{
\dontrun{
foo <- gs_new("new_sheet")
gs_delete(foo)
}

}
\seealso{
\code{\link{gs_grepdel}} and \code{\link{gs_vecdel}} for handy
  wrappers that help you delete sheets by title, with the ability to delete
  multiple sheets at once

Other sheet deletion functions: \code{\link{gs_grepdel}}
}
