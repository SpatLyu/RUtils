setwd("c:/Users/dell/Downloads")

pdf_file = "gdverse.pdf"

pdftools::pdf_convert(
  pdf_file,
  format = "png",
  pages = NULL,
  filenames = sprintf("./fig_gdverse_pres/fig_%02d.png", 1:16),
  dpi = 300
)

# go to https://freecompress.com/zh-cn/compress-image and compress the figures
