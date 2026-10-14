# Open this file in RStudio, then click Source.
# It rebuilds every HTML page from its R Markdown source.
if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Please install rmarkdown first: install.packages('rmarkdown')")
}
root <- getwd()
if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
  active <- tryCatch(rstudioapi::getActiveDocumentContext()$path, error=function(e) "")
  if (length(active) == 1 && nzchar(active) && basename(active) == "render.R") root <- dirname(active)
}
if (!file.exists(file.path(root, "index.Rmd"))) stop("Set the working directory to the site folder containing index.Rmd and render.R")
setwd(root)
files <- list.files(root, pattern="\\.Rmd$", full.names=TRUE)
for (f in files) {
  message("Rendering ", basename(f))
  rmarkdown::render(f, output_file=sub("\\.Rmd$", ".html", basename(f)), output_dir=root, knit_root_dir=root, quiet=TRUE, envir=new.env(parent=globalenv()))
}
message("Site generated: ", file.path(root,"index.html"))
browseURL(file.path(root,"index.html"))
