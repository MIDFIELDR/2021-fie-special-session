

knitr::opts_knit$set(root.dir = rprojroot::find_rstudio_root_file())

knitr::opts_chunk$set(
	echo = TRUE,
	message = FALSE,
	warning = FALSE,
	collapse = TRUE,
	comment = "#>",
	fig.width = 6,
	fig.asp = 1 / 1.6,
	out.width = "80%",
	fig.align = "center"
)

knitr::knit_hooks$set(inline = function(x) {
	if (!is.numeric(x)) {
		x
	} else if (x >= 10000) {
		prettyNum(round(x, 2), big.mark = ",")
	} else {
		prettyNum(round(x, 2))
	}
})

kable2html <- function(x, font_size = NULL, caption = NULL) {
	font_size <- ifelse(is.null(font_size), 11, font_size)
	kable_in <- knitr::kable(x, format = "html", caption = caption)
	kableExtra::kable_styling(kable_input = kable_in, font_size = font_size)
}

options(
	datatable.print.nrows = 10,
	datatable.print.topn = 5,
	datatable.print.class = TRUE
)
