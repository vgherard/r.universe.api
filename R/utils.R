# runiv
# Copyright (C) 2021  Valerio Gherardi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#' @title Parse JSON response
#'
#' @description Parses a NDJSON \code{httr} response.
#'
#' @param response an \code{httr} response.
#'
#' @return a \code{\link[tibble]{tibble}}.
#'
#' @author Valerio Gherardi
#'
#' @noRd
parse_ndjson_response <- function(response)
{
        txt <- httr::content(response, as = "text", encoding = "UTF-8")
        con <- textConnection(txt) # Effectively splits txt at newlines (\n)
        res <- jsonlite::stream_in(con, verbose = F)
        tibble::as_tibble(res)
}

#' @title Parse JSON response
#'
#' @description Parses a JSON \code{httr} response.
#'
#' @param response an \code{httr} response.
#'
#' @return a \code{\link[tibble]{tibble}}.
#'
#' @author Valerio Gherardi
#'
#' @noRd
parse_json_response <- function(
        response,
        simplifyVector = TRUE,
        simplifyDataFrame = simplifyVector,
        simplifyMatrix = simplifyVector,
        flatten = FALSE,
        ...
        )
{
        json <- httr::content(response, as = "text")
        res <- jsonlite::fromJSON(
                json,
                simplifyVector = simplifyVector,
                simplifyDataFrame = simplifyDataFrame,
                simplifyMatrix = simplifyMatrix,
                flatten = flatten,
                ...
                )

        if (is.data.frame(res))
                res <- tibble::as_tibble(res)

        res
}
