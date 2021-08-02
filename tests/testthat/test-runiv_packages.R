test_that("runiv_packages() returns a character as declared", {
        skip_if_offline("vgherard.r-universe.dev")
        expect_vector(runiv_packages("vgherard"), ptype = character())
})

test_that("runiv_packages(uni, pkg, ver) returns a tibble as declared", {
        skip_if_offline("vgherard.r-universe.dev")
        ver <- runiv_packages("vgherard", "runiv")[[1]]
        res <- runiv_packages("vgherard", "runiv", ver)
        expect_s3_class(res, class(tibble::tibble()), exact = TRUE)
})
