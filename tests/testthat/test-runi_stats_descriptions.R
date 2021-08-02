test_that("runi_stats_descriptions() returns a data.frame", {
        skip_if_offline("vgherard.r-universe.dev")
        res <- runi_stats_descriptions("vgherard")
        expect_s3_class(res, class(tibble::tibble()), exact = TRUE)
})
