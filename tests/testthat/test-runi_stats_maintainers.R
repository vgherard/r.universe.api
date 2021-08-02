test_that("runi_stats_maintainers() returns a data.frame()", {
        expect_s3_class(
                runi_stats_maintainers("vgherard"),
                class = class(tibble::tibble()),
                exact = TRUE)
})
