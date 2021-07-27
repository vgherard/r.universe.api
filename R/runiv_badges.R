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

#' @title R-universe badges
#'
#' @description Returns the URL of the badge with current version of given
#' package.
#'
#' @param universe A length one character. User or organization name of the
#' the R-universe owner.
#' @param package either \code{NULL}, or a length one character. Package name
#' (see details).
#'
#' @return a character vector.
#' @examples
#' runiv_badges("vgherard", "runiv")
#'
#' @author Valerio Gherardi
#'
#' @export
runiv_badges <- function(universe, package)
{
        assert_is_string(universe)
        assert_is_string(package)
        httr::modify_url(
                "https://",
                hostname = runiv_host("vgherard"),
                path = paste0("badges/", package)
                )
}
