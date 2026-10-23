test_that("theme_doom returns a complete theme that builds a plot", {
  thm <- theme_doom(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#F28C28")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_doom has a light mode", {
  thm <- theme_doom(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#FBE7E0")
  expect_equal(thm$geom$fill, "#C26200")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_doom(base_family = "sans", title_family = "sans", mode = "dim"))
})
