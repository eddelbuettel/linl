# remotes::install_github("coolbutuseless/minipdf")
library(minipdf)
doc <- PDFDocument$new(width=700, height=60, fontname="Helvetica")
doc$text("Less professional letterfoot", x=0, y=25, fontsize=40)
# doc$line(x1=80, y1=9, x2=720, y2=9)
k <- 30
ox <- seq(5, 635, length.out = k)
pal <- terrain.colors(k)
for( i in seq(along=ox)) {
    doc$circle(ox[i], 5, 5, fill=pal[i], stroke=NULL)
}
doc$save(here::here("vignettes", "examples", "letterfoot.pdf"))

