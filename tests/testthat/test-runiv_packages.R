test_that("runiv_packages() returns a character as declared", {
        expect_vector(runiv_packages("vgherard"), ptype = character())
})
