test_that("runiv_descriptions() returns a data.frame", {
        res <- runiv_descriptions("vgherard")
        expect_s3_class(res, class(data.frame()), exact = TRUE)
})
