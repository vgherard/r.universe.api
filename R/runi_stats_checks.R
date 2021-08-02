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

#' @title Recent Builds and Checks
#'
#' @description Get list with recent builds and checks of packages available in
#' an R-universe.
#'
#' @inheritParams runi_packages
#'
#' @return a \code{\link[tibble]{tibble}}.
#'
#' @examples runi_stats_checks("vgherard")
#'
#' @author Valerio Gherardi
#'
#' @export
runi_stats_checks <- function(universe)
{
        assert_is_string(universe)
        response <- runi_api_req(
                universe, path = "stats/checks", method = "GET"
        )
        parse_ndjson_response(response)
}
