allowed_files = c("hw7.Rmd",
                  "README.md",
                  "wercker.yml",
                  "hw7.Rproj",
                  "hw7_whitelist.R",
                  "precincts.geojson",
                  "nyc_parking_ticket.jpg")

files = dir()
disallowed_files = files[!(files %in% allowed_files)]

if (length(disallowed_files != 0))
{
  cat("Disallowed files found:\n")
  cat("  (remove the following files from your repo)\n\n")

  for(file in disallowed_files)
    cat("*",file,"\n")

  quit("no",1,FALSE)
}
