test_that("runi_badges() returns correct badge URLs", {
        expect_identical(
                runi_badges("vgherard", "runi"),
                "https://vgherard.r-universe.dev/badges/runi"
        )
})
