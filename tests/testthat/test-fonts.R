test_that("font_path points to the package assets", {
  expect_true(dir.exists(font_path()))
})

test_that("list_fonts returns the bundled Ubuntu fonts", {
  fnts <- list_fonts()
  expect_true("Ubuntu-Regular.ttf" %in% fnts)
  expect_true(all(grepl("\\.ttf$", fnts)))
  expect_true(all(grepl("^/Ubuntu/", list_fonts(include_path = TRUE))))
})

test_that("add_fonts aborts for a missing font", {
  expect_error(suppressMessages(add_fonts("NotAFont")))
})
