test_that("theme_surge returns a complete theme that builds a plot", {
  thm <- theme_surge(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#7ED321")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_surge has a light mode", {
  thm <- theme_surge(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#E6EDE2")
  expect_equal(thm$geom$fill, "#197A00")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_surge(base_family = "sans", title_family = "sans", mode = "dim"))
})
