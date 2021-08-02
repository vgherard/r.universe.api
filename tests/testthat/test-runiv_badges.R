test_that("runiv_badges() returns correct badge URLs", {
        expect_identical(
                runiv_badges("vgherard", "runiv"),
                "https://vgherard.r-universe.dev/badges/runiv"
        )
})
