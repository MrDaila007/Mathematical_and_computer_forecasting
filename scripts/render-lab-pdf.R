args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1L || !args[[1]] %in% as.character(1:7)) {
  stop("Usage: Rscript scripts/render-lab-pdf.R <1-7>")
}

lab <- args[[1]]
file_arg <- grep("^--file=", commandArgs(trailingOnly = FALSE), value = TRUE)
script_path <- if (length(file_arg)) sub("^--file=", "", file_arg[[1]]) else "."
root <- normalizePath(file.path(dirname(script_path), ".."))
if (!dir.exists(file.path(root, "Lab1"))) {
  root <- normalizePath(getwd())
}

input <- file.path(root, sprintf("Lab%s", lab), sprintf("lab%s.Rmd", lab))
if (!file.exists(input)) {
  stop("Missing report: ", input)
}

out_dir <- file.path(root, "reports")
dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)
out_file <- file.path(out_dir, sprintf("lab%s.pdf", lab))

rmarkdown::render(
  input = input,
  output_format = rmarkdown::pdf_document(
    latex_engine = "xelatex",
    dev = "png",
    toc = lab != "1",
    pandoc_args = c(
      "--variable", "mainfont=DejaVu Sans",
      "--variable", "monofont=DejaVu Sans Mono"
    )
  ),
  output_file = out_file,
  envir = new.env(parent = globalenv()),
  quiet = FALSE
)

if (!file.exists(out_file)) {
  stop("PDF was not created: ", out_file)
}

message("Wrote ", out_file)
