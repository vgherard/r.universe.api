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

#' @title Assertions
#'
#' @description Assertions for argument checking
#'
#' @param x object to be tested.
#' @param name name of object to be shown in error messages.
#'
#' @author Valerio Gherardi
#'
#' @name assertions
#' @noRd

assert_is_string <- function(x, name = deparse(substitute(x)))
{
        if (is.character(x) && length(x) == 1 && !is.na(x))
                return(invisible(TRUE))
        runi_domain_error(name, "a length one character vector (not NA)")
}

#' @title Domain Errors
#'
#' @description Throw an error of class \code{runi_domain_error} with an
#' automatic message
#'
#' @param name name of object to be shown in error messages.
#' @param expectation expectation (in plain english) on the object.
#'
#' @author Valerio Gherardi
#'
#' @name runi_domain_error
#' @noRd

runi_domain_error <- function(name, expectation)
{
        h <- "Invalid input"
        x <- paste0("'", name, "' must be ", expectation, ".")
        rlang::abort(c(h, x = x), class = "runi_domain_error")
}

#' @title Assert Online
#'
#' @description Throw an error of no internet connection.
#'
#' @author Valerio Gherardi
#'
#' @noRd

assert_has_internet <- function()
{
        # Use `Sys.setenv("SIMULATE_OFFLINE" = TRUE)` to simulate
        # absence of internet connection
        if (!curl::has_internet() ||
            as.logical(Sys.getenv("SIMULATE_OFFLINE", unset = FALSE))
            )
        {
                h <- "No internet connection"
                rlang::abort(h, class = "runi_offline_error")
        }
        return(invisible(TRUE))
}
