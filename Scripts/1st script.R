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


fls <- msdata::proteomics(full.names = TRUE)

basename(fls)

fl <- fls[2]

fl

rw <- mzR::openMSfile(fl)

rw
sp1 <- mzR::spectra(rw,1)

head(sp1)
