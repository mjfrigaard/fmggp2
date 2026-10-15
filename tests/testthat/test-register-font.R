test_that("register_font falls back to sans when font files are missing", {
  expect_equal(register_font("x", "missing.ttf", dir = tempdir()), "sans")
  expect_equal(register_font("x", "a.ttf", "b.ttf", dir = tempdir()), "sans")
})
