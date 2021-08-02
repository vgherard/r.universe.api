test_that("runi_packages() returns a character as declared", {
        skip_if_offline("vgherard.r-universe.dev")
        expect_vector(runi_packages("vgherard"), ptype = character())
})

test_that("runi_packages(uni, pkg, ver) returns a tibble as declared", {
        skip_if_offline("vgherard.r-universe.dev")
        ver <- runi_packages("vgherard", "kgrams")[[1]]
        res <- runi_packages("vgherard", "kgrams", ver)
        expect_s3_class(res, class(tibble::tibble()), exact = TRUE)
})
