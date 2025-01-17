#' Write a template file
#'
#' Rather than using `create_bst_project()` to start a new project folder, you
#' may use `use_bst_file()` to write a single file from any project template.
#' The functions `use_bst_gitignore()` and `use_bst_readme()` are shortcuts for
#' `use_bst_file("gitignore")` and `use_bst_file("readme")`.
#'
#' @inheritParams starter::use_project_file
#' @inheritParams create_bst_project
#' @name use_file
#' @seealso [`create_bst_project()`]
#' @examples
#' if (FALSE) {
#' # create gitignore file
#' use_bst_file("gitignore")
#' use_bst_gitignore()
#'
#' # create README.md file
#' use_bst_file("readme")
#' use_bst_readme()
#' }
NULL

#' @rdname use_file
#' @export
use_bst_file <- function(name = NULL,
                         filename = NULL,
                         open = interactive()) {
  # if template is NULL, use default template ----------------------------------
  template <- .select_template()

  starter::use_project_file(name = name, filename = filename,
                            template = template, open = open)
}

#' @rdname use_file
#' @export
use_bst_gitignore <- function(filename = NULL) {
  starter::use_project_file(name = "gitignore", filename = filename,
                            template = bstfun::project_templates[["default"]])
}

#' @rdname use_file
#' @export
use_bst_readme <- function(filename = NULL) {
  starter::use_project_file(name = "readme", filename = filename,
                            template = bstfun::project_templates[["default"]])
}

#' @rdname use_file
#' @export
use_hot_file <- function(name = NULL, filename = NULL, open = interactive()) {
  starter::use_project_file(name = name, filename = filename,
                            template = bstfun::project_templates[["hot"]],
                            open = open)
}

#' @rdname use_file
#' @export
use_hot_gitignore <- function(filename = NULL) {
  use_hot_file(name = "gitignore", filename = filename)
}

#' @rdname use_file
#' @export
use_hot_readme <- function(filename = NULL) {
  use_hot_file(name = "readme", filename = filename)
}

#' @rdname use_file
#' @export
use_hot_setup <- function(filename = NULL) {
  use_hot_file(name = "setup", filename = filename)
}

#' @rdname use_file
#' @export
use_hot_analysis <- function(filename = NULL) {
  use_hot_file(name = "analysis", filename = filename)
}

#' @rdname use_file
#' @export
use_hot_report <- function(filename = NULL) {
  use_hot_file(name = "report", filename = filename)
}


