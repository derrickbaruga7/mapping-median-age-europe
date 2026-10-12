# Run once from the repository root; rendering never installs packages.
packages <- c("restatapi", "tidyverse", "giscoR", "sf", "leaflet", "htmltools", "knitr", "rmarkdown")
missing <- packages[!vapply(packages, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) install.packages(missing, repos = "https://cloud.r-project.org")
