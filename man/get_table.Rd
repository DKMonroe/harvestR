% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_harvestR.r
\name{get_table}
\alias{get_table}
\title{Harvest API v2 get request wrapper}
\usage{
get_table(table = NULL, user = NULL, key = NULL, email = "",
  query = NULL)
}
\arguments{
\item{table}{Harvest API table that does not require specific ID's for the GET request. Refer to \href{https://help.getharvest.com/api-v2}{Harvest APIv2}. Possible values include the following as a string:  (\code{"clients"} or \code{"invoices"} or \code{"estimates"} or \code{"expenses"} or \code{"tasks"} or \code{"time_entries"} or \code{"projects"} or \code{"roles"} or \code{"users"})}

\item{user}{Harvest account number for authentication. Register at \href{https://id.getharvest.com/developers}{Harvest Developers}.}

\item{key}{Harvest API key for API authentication. Register at \href{https://id.getharvest.com/developers}{Harvest Developers}.}

\item{email}{Optional argument, requester email address for the "From" header in the get request.}

\item{query}{Optional argument, API query parameters to be provided in a list. Refer to \href{https://help.getharvest.com/api-v2}{Harvest APIv2} for acceptable parameters for each table. A few examples include:  (\code{from = "2018-1-1"} or \code{to = "2018-3-31"} or \code{project_id = "1234"} or \code{client_id = "1234"} or \code{user_id = "1234"})}
}
\value{
tbl_df
}
\description{
Submits get requests to the Harvest API v2. The function is a wrapper around the httr::GET function and returns the Harvest table.
}
\examples{

user_id <- 'your_user_id'
api_key <- paste0('Bearer ','you_api_key')
get_table(table = 'projects', user = user_id,key = api_key)
get_table(table = 'time_entries' , user = user_id, key = api_key, email = 'your_email',query = list(from = '2018-01-01', to = '2018-03-31'))

}
\references{
\url{https://id.getharvest.com/developers}, \url{https://help.getharvest.com/api-v2}, \url{https://github.com/r-lib/httr}
}
\author{
Mark Druffel, \email{mdruffel@propellerpdx.com}
}