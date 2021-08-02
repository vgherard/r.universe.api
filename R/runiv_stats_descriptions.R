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

#' @title DESCRIPTIONs
#'
#' @description Get DESCRIPTION files of packages available in an R-universe.
#'
#' @inheritParams runiv_packages
#'
#' @return a \code{\link[tibble]{tibble}}.
#'
#' @examples runiv_stats_descriptions("vgherard")
#'
#' @author Valerio Gherardi
#'
#' @export
runiv_stats_descriptions <- function(universe)
{
        assert_is_string(universe)
        response <- runiv_api_req(
                universe, path = "stats/descriptions", method = "GET"
        )
        parse_ndjson_response(response)
}
