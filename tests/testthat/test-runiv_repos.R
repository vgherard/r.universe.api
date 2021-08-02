test_that("runiv_repos() returns correct repository URLs", {
        expect_identical(
                runiv_repos("vgherard"),
                "https://vgherard.r-universe.dev/"
                )
})
