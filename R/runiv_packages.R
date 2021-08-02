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

#' @title Packages in an R-universe
#'
#' @description List all packages available in an R-universe.
#'
#' @param universe A length one character. User or organization name of the
#' the R-universe owner.
#' @param package either \code{NULL}, or a length one character. Package name
#' (see details).
#' @param version either \code{NULL}, or a character vector. Package version
#' (see details).
#'
#' @return a \code{\link[tibble]{tibble}} if both \code{package} and
#' \code{version} are not \code{NULL}, a \code{character} vector otherwise.
#'
#' @details This function gives access to three types of information, depending
#' on how many arguments are different from \code{NULL}:
#'
#' - \code{runiv_packages(universe)} lists all packages in the R-universe
#' \code{universe}.
#' - \code{runiv_packages(universe, package)}, where \code{package} is a
#' string, lists all available version for package \code{package} in
#' this universe.
#' - \code{runiv_packages(universe, package, version)} lists all available
#' builds for package \code{package} of version \code{version}
#' (specified as a string).
#'
#' The argument \code{version} is ignored if \code{package} is \code{NULL}.
#'
#' @examples
#' ( packages <- runiv_packages("vgherard") )
#' ( versions <- runiv_packages("vgherard", packages[[1]]) )
#' ( versions <- runiv_packages("vgherard", packages[[1]], versions[[1]]) )
#'
#' @author Valerio Gherardi
#'
#' @export
runiv_packages <- function(universe, package = NULL, version = NULL)
{
        assert_is_string(universe)
        path <- "packages"

        if (!is.null(package)) {
                assert_is_string(package)
                path <- paste0(path, "/", package)
                if (!is.null(version)) {
                        assert_is_string(version)
                        path <- paste0(path, "/", version)
                }
        }

        response <- runiv_api_req(universe, path = path, method = "GET")
        parse_json_response(response)
}
