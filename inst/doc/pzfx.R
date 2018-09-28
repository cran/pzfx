## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(pzfx)
pzfx_tables(system.file("extdata/exponential_decay.pzfx", package="pzfx"))

## ------------------------------------------------------------------------
df <- read_pzfx(system.file("extdata/exponential_decay.pzfx", package="pzfx"), table="Exponential decay")
head(df)

## ------------------------------------------------------------------------
df <- read_pzfx(system.file("extdata/exponential_decay.pzfx", package="pzfx"), table=1)
head(df)

## ---- include=FALSE, eval=FALSE------------------------------------------
#  # generates a hex sticker
#  library(hexSticker)
#  sticker(
#    expression({
#      plot(c(0, 1), c(0, sin(pi / 3)), type="n", axes=F, xlab="", ylab="")
#      segments(x0=0, y0=0, x1=0.5, y1=sin(pi / 3), col="white", lwd=3)
#      segments(x0=1, y0=0, x1=0.5, y1=sin(pi / 3), col="white", lwd=3)
#      segments(x0=0, y0=0, x1=1, y1=0, col="white", lwd=3)
#      segments(x0=0, y0=0, x1=0.5, y1=0.5 * tan(pi / 6), col="white", lwd=3)
#      segments(x0=0.5, y0=sin(pi / 3), x1=0.5, y1=0.5 * tan(pi / 6), col="white", lwd=3)
#      segments(x0=0.5, y0=0.5 * tan(pi / 6), x1=1, y1=0, col="white", lwd=3)
#    }),
#    package="pzfx",
#    p_size=8,
#    p_y=1.6,
#    s_x=0.75,
#    s_y=0.7,
#    s_width=1.7,
#    s_height=1.7,
#    h_fill="#ff692b",
#    h_color="#ff4a00",
#    url="https://yue-jiang.github.io/pzfx/",
#    u_color="white",
#    filename="man/figures/logo.png")

