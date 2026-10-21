test_that("theme_wired returns a complete theme that builds a plot", {
  thm <- theme_wired(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#E4180A")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_wired has a light mode", {
  thm <- theme_wired(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#ECECEB")
  expect_equal(thm$geom$fill, "#E4180A")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_wired(base_family = "sans", title_family = "sans", mode = "dim"))
})
