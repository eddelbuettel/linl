\name{NEWS}
\title{News for Package \pkg{linl}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/linl/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/linl/issues/#1}{##1}}

\section{Changes in linl version 0.0.4 (2019-10-23)}{
  \itemize{
    \item Continuous integration tests at Travis are now running via custom
    Docker container (Dirk in \ghpr{21}).
    \item A footer for the letter can now be specified (Michal Bojanowski in
    \ghpr{23} fixing \ghit{10}).
    \item The header and footer options be customized more extensively, and
    are documented (Aaron in \ghpr{25} and \ghpr{26}).
  }
}

\section{Changes in linl version 0.0.3 (2018-12-15)}{
  \itemize{
    \item Correct LaTeX double loading of package \code{color} with
    different options (Mark van der Loo in \ghpr{18} fixing \ghit{17}).
  }
}

\section{Changes in linl version 0.0.2 (2017-10-29)}{
  \itemize{
    \item Set a few defaults for a decent-looking skeleton and template:
    font, fontsize, margins, left-justify closing (\ghpr{3})
    \item Blockquote display is now a default as well (\ghpr{4}).
    \item Updated \code{skeleton.Rmd} and vignette source accordingly 
    \item Documented new default options (\ghpr{5} and \ghpr{6}).
    \item Links are now by default printed as footnotes (\ghpr{9}).
  }
}

\section{Changes in linl version 0.0.1 (2017-10-17)}{
  \itemize{
    \item Initial CRAN release
  }
}
