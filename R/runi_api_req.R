# runi
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
#' @inheritParams runi_packages
#'
#' @return a string, API hostname for the R-universe specified by \code{owner}.
#'
#' @author Valerio Gherardi
#'
#' @noRd
runi_host <- function(universe) {
        if (is.null(universe))
                return("r-universe.dev")
        assert_is_string(universe)
        paste0(universe, ".r-universe.dev")
}

#' @title R-universe API request
#'
#' @description Make API request to an R-universe.
#'
#' @inheritParams runi_packages
#' @param path endpoint of the API request.
#' @param method API request method.
#'
#' @return a string, API hostname for the R-universe specified by \code{owner}.
#'
#' @author Valerio Gherardi
#'
#' @noRd
runi_api_req <- function(
        universe, path, method = c("GET", "POST", "PUT", "DELETE")
        )
{
        assert_has_internet()
        if (!is.null(universe))
                assert_is_string(universe)
        assert_is_string(path)
        method <- match.arg(method)
        url <- httr::modify_url(
                "https://", hostname = runi_host(universe), path = path
                )
        ua <- httr::user_agent("https://github.com/vgherard/runi")

        fun <- get(method, envir = rlang::fn_env(httr::GET))
        httr::stop_for_status(fun(url, ua))
}
