doi2rpkgcita = \(doi){
  return(rcrossref::cr_cn(dois = doi, format = "bibentry"))
}

doi2rpkgcita("10.1007/s11004-022-10036-8")