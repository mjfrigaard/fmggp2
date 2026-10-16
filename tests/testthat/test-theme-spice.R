test_that("theme_spice returns a complete theme that builds a plot", {
  thm <- theme_spice(base_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#5EC49C")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})
