test_that("runi_repos() returns correct repository URLs", {
        expect_identical(
                runi_repos("vgherard"),
                "https://vgherard.r-universe.dev/"
                )
})
