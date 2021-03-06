% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test.R
\name{test}
\alias{test}
\alias{test_file}
\alias{test_coverage}
\alias{test_coverage_file}
\title{Execute testthat tests in a package}
\usage{
test(pkg = ".", filter = NULL, stop_on_failure = FALSE, export_all = TRUE, ...)

test_file(file = find_active_file(), ...)

test_coverage(pkg = ".", show_report = interactive(), ...)

test_coverage_file(
  file = find_active_file(),
  filter = TRUE,
  show_report = interactive(),
  export_all = TRUE,
  ...
)
}
\arguments{
\item{pkg}{The package to use, can be a file path to the package or a
package object.  See \code{\link[=as.package]{as.package()}} for more information.}

\item{filter}{If not \code{NULL}, only tests with file names matching this
regular expression will be executed. Matching be performed on the file
name after it has been stripped of \code{"test-"} and \code{".R"}.}

\item{stop_on_failure}{If \code{TRUE}, throw an error if any tests fail.

For historical reasons, the default value of \code{stop_on_failure} is \code{TRUE}
for  \code{test_package()} and \code{test_check()} but \code{FALSE} for \code{test_dir()}, so
if you're calling \code{test_dir()} you may want to consider explicitly setting
\code{stop_on_failure = TRUE}.}

\item{export_all}{If \code{TRUE} (the default), export all objects.
If \code{FALSE}, export only the objects that are listed as exports
in the NAMESPACE file.}

\item{...}{additional arguments passed to wrapped functions.}

\item{file}{One or more source or test files. If a source file the
corresponding test file will be run. The default is to use the active file
in RStudio (if available).}

\item{show_report}{Show the test coverage report.}
}
\description{
\itemize{
\item \code{test()} runs all tests in a package. It's a shortcut for
\code{\link[testthat:test_dir]{testthat::test_dir()}}
\item \code{test_file()} runs \code{test()} on the active file.
\item \code{test_coverage()} computes test coverage for your package. It's a
shortcut for \code{\link[covr:package_coverage]{covr::package_coverage()}} plus \code{\link[covr:report]{covr::report()}}.
\item \code{test_coverage_file()} computes test coverage for the active file. It's a
shortcut for \code{\link[covr:file_coverage]{covr::file_coverage()}} plus \code{\link[covr:report]{covr::report()}}.
}
}
