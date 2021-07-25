test_that("runiv_descriptions() returns a data.frame", {
        skip_if_offline()
        res <- runiv_descriptions("vgherard")
        expect_s3_class(res, class(data.frame()), exact = TRUE)
})
