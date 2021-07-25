test_that("runiv_descriptions() returns a data.frame", {
        skip_if_offline("vgherard.r-universe.dev")
        res <- runiv_descriptions("vgherard")
        expect_s3_class(res, class(data.frame()), exact = TRUE)
})
