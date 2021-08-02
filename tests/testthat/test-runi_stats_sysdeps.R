test_that("runi_stats_sysdeps() returns a tibble as declared", {
        skip_if_offline("vgherard.r-universe.dev")
        res <- runi_stats_sysdeps("vgherard")
        expect_s3_class(res, class(tibble::tibble()), exact = TRUE)
})
