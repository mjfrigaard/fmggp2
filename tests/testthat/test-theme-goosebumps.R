test_that("theme_goosebumps returns a complete theme that builds a plot", {
  thm <- theme_goosebumps(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#46A664")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})

test_that("theme_goosebumps has a light mode", {
  thm <- theme_goosebumps(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#E2EEE5")
  expect_equal(thm$geom$fill, "#007A34")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_goosebumps(base_family = "sans", title_family = "sans", mode = "dim"))
})
