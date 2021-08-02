test_that("runiv_packages() returns a tibble as declared", {
        skip_if_offline("r-universe.dev")
        expect_s3_class(runiv_universes(),
                        class = class(tibble::tibble()),
                        exact = TRUE
                        )
})
