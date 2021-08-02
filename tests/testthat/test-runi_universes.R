test_that("runi_packages() returns a tibble as declared", {
        skip_if_offline("r-universe.dev")
        expect_s3_class(runi_universes(),
                        class = class(tibble::tibble()),
                        exact = TRUE
                        )
})
