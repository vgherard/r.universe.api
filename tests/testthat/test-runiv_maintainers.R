test_that("runiv_maintainers() returns a data.frame()", {
        expect_s3_class(
                runiv_maintainers("vgherard"),
                class = class(data.frame()),
                exact = TRUE)
})
