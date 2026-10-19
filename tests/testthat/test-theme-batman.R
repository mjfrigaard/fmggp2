test_that("theme_batman returns a complete theme that builds a plot", {
  thm <- theme_batman(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$geom$fill, "#E96A23")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})

test_that("theme_batman versions build a plot", {
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  classic <- theme_batman(base_family = "sans", title_family = "sans", version = "classic")
  darknight <- theme_batman(base_family = "sans", title_family = "sans", version = "darknight")
  expect_equal(classic$geom$fill, "#58C0F9")
  expect_equal(darknight$geom$fill, "#94873D")
  expect_no_error(ggplot2::ggplotGrob(p + classic))
  expect_no_error(ggplot2::ggplotGrob(p + darknight))
  expect_error(theme_batman(version = "nolan"))
})

test_that("theme_batman has light modes", {
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  movie <- theme_batman(base_family = "sans", title_family = "sans", mode = "light")
  darknight <- theme_batman(base_family = "sans", title_family = "sans",
                            version = "darknight", mode = "light")
  classic <- theme_batman(base_family = "sans", title_family = "sans",
                          version = "classic", mode = "light")
  expect_equal(movie$plot.background$fill, "#F1EAE2")
  expect_equal(darknight$plot.background$fill, "#ECECE1")
  expect_equal(classic$plot.background$fill, "#C6C6C6")
  expect_no_error(ggplot2::ggplotGrob(p + movie))
  expect_no_error(ggplot2::ggplotGrob(p + darknight))
  expect_error(theme_batman(mode = "dim"))
})
