args <- commandArgs(trailingOnly = TRUE)
path <- if (length(args) > 0) args[[1]] else "README.md"

content <- paste(readLines(path, warn = FALSE, encoding = "UTF-8"), collapse = "\n")

matches <- gregexpr("(?s)<p[^>]*>.*?</p>", content, perl = TRUE)

if (matches[[1]][1] != -1) {
  match_texts <- regmatches(content, matches)[[1]]

  process_p_block <- function(block) {
    block <- gsub("(<p[^>]*>)[ \t]*\n([ \t]*\n)*", "\\1\n", block, perl = TRUE)
    block <- gsub("(<a[^>]*>)", "  \\1", block, perl = TRUE)
    block
  }

  regmatches(content, matches)[[1]] <- vapply(
    match_texts,
    process_p_block,
    character(1)
  )
}

writeLines(content, con = path, useBytes = TRUE)
