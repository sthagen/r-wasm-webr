% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/library.R
\name{library_shim}
\alias{library_shim}
\alias{require_shim}
\title{Install missing packages from the default webR binary repo}
\usage{
library_shim(pkg, ..., show_menu = getOption("webr.show_menu"))

require_shim(pkg, ..., show_menu = getOption("webr.show_menu"))
}
\arguments{
\item{pkg}{Character vector of package names}

\item{...}{Other arguments to be passed to \code{library} and \code{require}.}

\item{show_menu}{Show a menu asking the user if they would like to install
the package if it is missing. Defaults to \code{getOption("webr.show_menu")}.}
}
\description{
When loading R packages using \code{\link[=library_shim]{library_shim()}} or \code{\link[=require_shim]{require_shim()}}, if a
package is missing an attempt will be made to download and install the
missing package from the default webR binary repo.

Once downloaded, the original \code{\link[base:library]{base::library()}} or \code{\link[base:library]{base::require()}} command
is invoked to load the package.
}
\details{
A menu will be shown to the user when the \code{webr.show_menu} global option is
set to \code{TRUE}. Otherwise, the user will not be prompted.

When the menu is enabled, loading a missing package will cause a prompt to be
shown to the user asking if they would like to download the missing package.
If the user replies in the affirmative, the package is downloaded
using \code{\link[=install]{install()}}.

The \code{webr.show_menu} global option may be overridden by providing the
\code{show_menu} argument. By default, if no global option is set and no argument
is provided, the menu will not be shown.
}
