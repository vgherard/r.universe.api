test_that("runiv_host() returns the expected result for my R-universe", {
        expect_identical(
                runiv_host("vgherard"),
                httr::modify_url("https://vgherard.r-universe.dev")
                )
})
