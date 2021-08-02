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


#' @title List R-universes
#'
#' @description List all available R-universes.
#'
#' @return A character vector
#'
#' @examples runiv_universes()
#'
#' @author Valerio Gherardi
#'
#' @export
runiv_universes <- function() {
        response <- runiv_api_req(universe = NULL, path = "stats/organizations")
        parse_ndjson_response(response)
}
