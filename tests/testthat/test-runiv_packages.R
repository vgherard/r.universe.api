test_that("runiv_packages() returns a character as declared", {
        skip_if_offline("vgherard.r-universe.dev")
        expect_vector(runiv_packages("vgherard"), ptype = character())
})
