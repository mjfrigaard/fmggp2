test_that("theme_geocities returns a complete theme that builds a plot", {
  thm <- theme_geocities(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#00FF00")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_geocities has a light mode", {
  thm <- theme_geocities(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#ECECE1")
  expect_equal(thm$geom$fill, "#005B00")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_geocities(base_family = "sans", title_family = "sans", mode = "dim"))
})
