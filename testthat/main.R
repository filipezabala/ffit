# main file
# http://r-pkgs.had.co.nz/

# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

# packs
library(devtools)

# session_info
session_info()

# updating and creating manual
setwd('~/Dropbox/PUC/GEARS/ffit/')
devtools::document(setwd('~/Dropbox/PUC/GEARS/ffit/'))

# loading
devtools::load_all()

# installing
update.packages(ask=F)
devtools::install_github('filipezabala/ffit', force = T)

# attaching
library(ffit)
?ft
