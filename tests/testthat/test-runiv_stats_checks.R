test_that("runiv_stats_checks() returns a data.frame", {
        skip_if_offline("vgherard.r-universe.dev")
        res <- runiv_stats_checks("vgherard")
        expect_s3_class(res, class(data.frame()), exact = TRUE)
})
