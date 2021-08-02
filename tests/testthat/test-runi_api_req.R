test_that("runi_host() returns the expected result for my R-universe", {
        expect_identical(
                runi_host("vgherard"),
                "vgherard.r-universe.dev"
                )
})
