# Open ts-yearly-datasets.Rproj before running this script

# Copyright (C) 2018-2019, Mauricio \"Pacha\" Vargas.
# This file is part of Open Trade Statistics project.
# The scripts within this project are released under GNU General Public License 3.0.
# This program is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# See https://github.com/tradestatistics/ts-yearly-datasets/LICENSE for the details.

if (!require("packrat")) install.packages("packrat")
library(packrat)

last_bundle_url <- "https://github.com/tradestatistics/ts-packrat-library/releases/download/3.5.1/packages-snapshot-2018-11-23.tar.gz"
last_bundle_gz <- gsub("https://github.com/tradestatistics/ts-packrat-library/releases/download/.*/", "", last_bundle_url)

if (!file.exists(last_bundle_gz)) {
  download.file(last_bundle_url, last_bundle_gz)
}

unbundle(last_bundle_gz, getwd())

try(file.rename("ts-packrat-library/.Rprofile", ".Rprofile"))
try(file.rename("ts-packrat-library/packrat", "packrat"))
try(unlink("ts-packrat-library", recursive = TRUE))
