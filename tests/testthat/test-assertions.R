test_that("assert_is_string", {
        expect_error(assert_is_string("a string"), NA)

        class <- "runiv_domain_error"
        expect_error(assert_is_string(1), class = class)
        expect_error(assert_is_string(c("a", "b")), class = class)
        expect_error(assert_is_string(NA_character_), class = class)
})

test_that("Test no error if connected to internet", {
        skip_if_not(curl::has_internet())
        expect_error(assert_has_internet(), NA)
})

test_that("Test error if no internet connection", {
        Sys.setenv("SIMULATE_OFFLINE" = TRUE)
        expect_error(assert_has_internet(), class = "runiv_offline_error")
})
