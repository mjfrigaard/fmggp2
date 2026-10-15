test_that("theme_beanie returns a complete theme that builds a plot", {
  thm <- theme_beanie(base_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#E2231A")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})
