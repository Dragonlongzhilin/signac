[![R-CMD-check](https://github.com/timoast/signac/workflows/R-CMD-check/badge.svg)](https://github.com/timoast/signac/actions)
[![CRAN Version](https://www.r-pkg.org/badges/version/Signac)](https://cran.r-project.org/package=Signac)
[![CRAN Downloads](https://cranlogs.r-pkg.org/badges/Signac)](https://cran.r-project.org/package=Signac)

# Signac

Signac is an extension of [Seurat](https://github.com/satijalab/seurat) for the analysis, interpretation, and exploration of single-cell chromatin datasets.

## Features

Signac is currently focused on the analysis of single-cell ATAC-seq data, but new features will be added as experimental methods for measuring other chromatin-based modalities at single-cell resolution become more widespread. Signac supports the following features:

* Calculating single-cell QC metrics
* Dimensional reduction, visualization, and clustering
* Identifying cell type-specific peaks
* Visualizing 'pseudo-bulk' coverage tracks
* Integration of multiple single-cell ATAC-seq datasets
* Integration with single-cell RNA-seq datasets
* Motif enrichment analysis

Please see the Signac [vignettes](https://satijalab.org/signac/articles/) page for examples.

## Installation

To use Signac first make sure Bioconductor is installed:



```r
# Install bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()
```

### Current release


```r
install.packages("Signac")
```

### Development version


```r
install.packages("devtools")
devtools::install_github("timoast/signac", ref = "develop")
```

For information about installing Seurat, see the Seurat [website](https://satijalab.org/seurat/install.html)

It can also be useful (but not essential) to install species-specific packages from Bioconductor:

#### Human 


```r
BiocManager::install(c('BSgenome.Hsapiens.UCSC.hg19', 'EnsDb.Hsapiens.v75'))
```

#### Mouse


```r
BiocManager::install(c('BSgenome.Mmusculus.UCSC.mm10', 'EnsDb.Mmusculus.v79'))
```