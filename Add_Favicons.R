fs::file_copy("./pkgdown/favicon/apple-touch-icon.png",
              "./pkgdown/favicon/apple-touch-icon-180x180.png", overwrite = TRUE)

magick::image_read("./pkgdown/favicon/apple-touch-icon-180x180.png") |>
  magick::image_resize("152x152")|>
  magick::image_write("./pkgdown/favicon/apple-touch-icon-152x152.png")

magick::image_read("./pkgdown/favicon/apple-touch-icon-180x180.png") |>
  magick::image_resize("120x120")|>
  magick::image_write("./pkgdown/favicon/apple-touch-icon-120x120.png")

magick::image_read("./pkgdown/favicon/apple-touch-icon-180x180.png") |>
  magick::image_resize("76x76")|>
  magick::image_write("./pkgdown/favicon/apple-touch-icon-76x76.png")

magick::image_read("./pkgdown/favicon/apple-touch-icon-180x180.png") |>
  magick::image_resize("60x60")|>
  magick::image_write("./pkgdown/favicon/apple-touch-icon-60x60.png")

magick::image_read("./pkgdown/favicon/favicon-96x96.png") |>
  magick::image_resize("16x16")|>
  magick::image_write("./pkgdown/favicon/favicon-48x48.png")

magick::image_read("./pkgdown/favicon/favicon-96x96.png") |>
  magick::image_resize("32x32")|>
  magick::image_write("./pkgdown/favicon/favicon-32x32.png")

magick::image_read("./pkgdown/favicon/favicon-96x96.png") |>
  magick::image_resize("16x16")|>
  magick::image_write("./pkgdown/favicon/favicon-16x16.png")

magick::image_read("./pkgdown/favicon/web-app-manifest-512x512.png") |> 
  magick::image_scale("32x32") |> 
  magick::image_write(path = "./pkgdown/favicon/favicon.ico", format = "ico")
