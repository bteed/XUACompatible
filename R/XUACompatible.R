#' Add an X-UA-Compatible meta tag to an HTML document
#'
#' @param html An HTML document
#' @param ie_version The document mode Internet Explorer should use to render the HTML document. Defaults to edge, which uses the highest supported document mode of the browser.
#'
#' @return An HTML document
#' @export
#'
#' @examples
XUACompatible <- function(html, ie_version = "edge") {

  x <- xml2::read_html(html)

  head <- xml2::xml_find_first(x, "/html/head")

  meta <-
    xml2::xml_find_first(
      xml2::read_html(
        paste0(
          '<meta http-equiv="X-UA-Compatible" content="IE=', ie_version, '">'
          )
        ),
      "/html/head/meta"
    )

  xml2::xml_add_child(
    head,
    .value = meta,
    .where = 0
  )

  xml2::write_html(x, html)

}

