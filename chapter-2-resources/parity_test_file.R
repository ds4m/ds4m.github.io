test_that("test_parity prints correctly", {
    expect_that(test_parity(-3), prints_text("odd"))
    expect_that(test_parity(0), prints_text("even"))
    expect_that(test_parity(6), prints_text("even"))
})
