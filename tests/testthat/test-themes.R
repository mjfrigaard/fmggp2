test_that("theme_win98 returns a complete theme", {
  thm <- theme_win98(base_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$panel.background$fill, "#FFFFFF")
  expect_equal(thm$plot.background$colour, "#117E80")
})

test_that("theme_napster returns a complete theme", {
  thm <- theme_napster(base_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#C6C6C6")
  expect_equal(thm$geom$fill, "#00FFFF")
})

test_that("themes build a plot", {
  p <- ggplot2::ggplot(data.frame(x = 1:10), ggplot2::aes(x = x)) +
    ggplot2::geom_histogram(bins = 5) +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + theme_win98(base_family = "sans")))
  expect_no_error(ggplot2::ggplotGrob(p + theme_napster(base_family = "sans")))
})

test_that("font helpers fall back to sans", {
  expect_equal(win98_font(path = tempfile()), "sans")
  expect_equal(napster_font(dir = tempdir()), "sans")
})

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
