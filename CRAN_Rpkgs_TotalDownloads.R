CRAN_Rpkgs_TotalDownloads = \(maintainername,timestart){
  # Install and load the required packages
  if (!requireNamespace("cranlogs", quietly = TRUE)) {
    install.packages("cranlogs")
  }
  
  # Get the list of all packages on CRAN
  all_packages = utils::available.packages(repos = "https://cloud.r-project.org")
  
  # Extract the names of packages maintained by "lyu"
  lyu_packages = sapply(rownames(all_packages), function(pkg) {
    maintainer = utils::packageDescription(pkg, fields = "Maintainer")
    if (!is.na(maintainer) && grepl(maintainername, maintainer, ignore.case = TRUE)) {
      return(pkg)
    } else {
      return(NULL)
    }
  })
  
  # Remove NULL values from the list of packages
  lyu_packages = unlist(lyu_packages)
  
  # Get the total download count for these packages
  if (length(lyu_packages) > 0) {
    download_counts = cranlogs::cran_downloads(packages = lyu_packages, 
                                               from = timestart, 
                                               to = Sys.Date())
    total_downloads = sum(download_counts$count)
    cat(paste0("Total downloads for CRAN R packages maintained by ",
               maintainername, " is"), total_downloads, "\n")
  } else {
    cat(paste0("No CRAN R packages maintained by ",maintainername," were found.\n"))
  }
}

CRAN_Rpkgs_TotalDownloads("Wenbo Lv", "2004-10-01")