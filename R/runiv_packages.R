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

#' @title Packages in an R-universe
#'
#' @description List all packages available in an R-universe.
#'
#' @param universe A length one character. User or organization name of the
#' the R-universe owner.
#'
#' @return a character vector. List of R packages in the \code{owner}'s
#' R-universe.
#'
#' @examples runiv_packages("vgherard")
#'
#' @author Valerio Gherardi
#'
#' @export
runiv_packages <- function(universe)
{
        response <- runiv_api_req(universe, path = "packages", method = "GET")
        jsonlite::fromJSON( httr::content(response, as = "text") )
}
