# r.universe.api
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

#' @title R-universe API hostname
#'
#' @description Return the API hostname for a particular R-universe user.
#'
#' @inheritParams runiv_packages
#'
#' @return a string, API hostname for the R-universe specified by \code{owner}.
#'
#' @noRd
runiv_host <- function(owner) {
        stopifnot(is.character(owner) && length(owner) == 1 && !is.na(owner))
        paste0("https://", owner, ".r-universe.dev/")
}

#' @title R-universe API request
#'
#' @description Make API request to an R-universe.
#'
#' @param owner A length one character. Name of user or organization
#' owner of the R-universe repository.
#' @param path endpoint of the API request.
#' @param method API request method.
#'
#' @return a string, API hostname for the R-universe specified by \code{owner}.
#'
#' @noRd
runiv_api_req <- function(
        owner, path, method = c("GET", "POST", "PUT", "DELETE")
        )
{
        stopifnot(is.character(owner) && length(owner) == 1 && !is.na(owner))
        stopifnot(is.character(path) && length(path) == 1 && !is.na(path))
        method <- match.arg(method)
        url <- httr::modify_url(runiv_host(owner), path = path)
        ua <- httr::user_agent("https://github.com/vgherard/r.universe.api")
        httr::GET(url, ua)
}
