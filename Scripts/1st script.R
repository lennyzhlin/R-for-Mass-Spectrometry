library(BiocManager)
available()
BiocManager::repositories()
BiocManager::valid()

BiocManager::install(c(
  "caTools", "gert", "gganimate", "rstudioapi", "vctrs"
), update = TRUE, ask = FALSE)

packageVersion("BiocManager")




library(mzR)
library(msdata)

mzxml <- system.file("threonine/threonine_i2_e35_pH_tree.mzXML",
                     package = "msdata")
aa <- openMSfile(mzxml)

runInfo(aa)
instrumentInfo(aa)

pl <- peaks(aa,10)
peaksCount(aa,10)


plot(pl[,1], pl[,2], type="h", lwd=1)
