test_that("theme_gameboy returns a complete theme", {
  thm <- theme_gameboy(base_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#9BBC0F")
  expect_equal(thm$geom$fill, "#0F380F")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar()
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})

test_that("gameboy_font finds the bundled font and falls back to sans", {
  expect_equal(gameboy_font(), "Press Start 2P")
  expect_equal(gameboy_font(path = tempfile()), "sans")
})
