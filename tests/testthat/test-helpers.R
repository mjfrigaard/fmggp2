test_that("%nin% negates %in%", {
  expect_equal(1:3 %nin% 2, c(TRUE, FALSE, TRUE))
})

test_that("status writes a callout", {
  expect_output(status("complete"), "callout-tip")
  expect_output(status("dev"), "still in development")
  expect_error(status("other"), "Invalid")
})

test_that("co_box writes a callout", {
  expect_output(co_box("b", "Header", "Body"), "callout-note")
  expect_output(co_box("o", "Header", "Body", fold = TRUE), "collapse='true'")
  expect_output(co_box("g", "Header", look = "minimal"), "appearance='minimal'")
  expect_error(co_box("z", "Header"), "Invalid")
})
