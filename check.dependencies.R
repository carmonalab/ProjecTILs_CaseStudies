#Check dependencies and install packages if necessary

if (!requireNamespace("renv")) 
  install.packages("renv")
library(renv)
renv::restore()


if (!requireNamespace("remotes")) 
  install.packages("remotes")
library(remotes)

if (!requireNamespace("BiocManager", quietly = TRUE))  
  install.packages("BiocManager")

if (!requireNamespace("Seurat", quietly = TRUE)) {
  BiocManager::install("multtest")
  install.packages("Seurat")
}

if (!requireNamespace("AUCell", quietly = TRUE))
  BiocManager::install("AUCell")

if (!requireNamespace("SingleCellExperiment", quietly = TRUE))
  BiocManager::install("SingleCellExperiment")

if (!requireNamespace("TILPRED", quietly = TRUE))
  remotes::install_github("carmonalab/TILPRED")

if (!requireNamespace("umap", quietly = TRUE))
  install.packages("umap")

if (!requireNamespace("Matrix", quietly = TRUE))
  install.packages("Matrix")

if (!requireNamespace("devtools")) 
  install.packages("devtools")


Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS="true")

if (!requireNamespace("ProjecTILs")) 
  remotes::install_git("https://gitlab.unil.ch/carmona/ProjecTILs.git", branch = "v0.4")




