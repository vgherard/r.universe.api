test_that("runiv_stats_maintainers() returns a data.frame()", {
        expect_s3_class(
                runiv_stats_maintainers("vgherard"),
                class = class(data.frame()),
                exact = TRUE)
})
