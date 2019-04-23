#' @param img Vector of character file names or list of \code{nifti} images
#' @param elementId ID for the element in the DOM
#' @param width Width of the widget
#' @param height height of the widget
#'
#'
#' @title Creating a Video widget
#'
#' @description Wraps a widget for the Video JavaScript library
#'
#' @import htmlwidgets
#'
#' @export
#' @examples
#'
#'
video <- function(
  video = NULL,
  elementId = NULL,
  width = NULL, height = NULL,
  options = NULL
){

  if (!is.null(video)) {
    video = path.expand(video)
  }
  if (is.null(elementId)) {
    elementId = basename(tempfile())
  }

  x <- list(
    id = elementId,
    video = video
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'video',
    x = x,
    width = width,
    height = height,
    package = 'video',
    elementId = elementId
  )
}

#' Shiny bindings for video
#'
#' Output and render functions for using video within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a video
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name video-shiny
#'
#' @export
videoOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, "video", width,
                                 height, package = "video")
}

#' @rdname video-shiny
#' @export
renderVideo <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, videoOutput, env, quoted = TRUE)
}
