test_that("assert_string", {
        expect_error(assert_is_string("a string"), NA)

        class <- domain_error_class()
        expect_error(assert_is_string(1), class = class)
        expect_error(assert_is_string(c("a", "b")), class = class)
        expect_error(assert_is_string(NA_character_), class = class)
})
