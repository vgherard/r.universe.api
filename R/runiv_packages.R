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

#' @title R-universe API request
#'
#' @description Make API request to an R-universe.
#'
#' @param owner A length one character. Name of user or organization
#' owner of the R-universe repository.
#'
#' @return a character vector. List of R packages in the \code{owner}'s
#' R-universe.
#'
#' @examples runiv_packages("vgherard")
#'
#' @export
runiv_packages <- function(owner)
{
        response <- runiv_api_req(owner, path = "packages", method = "GET")
        jsonlite::fromJSON( content(response, as = "text") )
}

