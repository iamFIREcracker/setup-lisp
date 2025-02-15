(defpackage #:project-docs/changelog
  (:use #:cl)
  (:import-from #:40ants-doc/changelog
                #:defchangelog))
(in-package project-docs/changelog)


(defchangelog (:ignore-words ("ASDF"))
  (2.0.0 2021-10-28
         "# New

          - Add Windows support.

          # Breaking changes

          Now instead of latest version of ASDF, Roswell and Qlot
          we pin versions which known to work in supported environments.

          If you want latest version, pass \"latest\" as value of
          \"asdf-version\", \"roswell-version\" or \"qlot-version\".

          Currently these versions are used:

          - ASDF: 3.3.5.3
          - Roswell: v21.10.14.111
          - Qlot: 0.11.5

          Thanks for these changes to Matteo Landi!")
  (1.1.2 2021-09-19
          "Move from Qlot 0.11.1 to 0.11.5.")
  (1.1.1 2021-09-12
         "Version of qlot was fixed on 0.11.1, because later versions are broken and unable to install
          systems from the GitHub. See issue [#118](https://github.com/fukamachi/qlot/issues/118).")
  (1.1.0 2021-06-06
         "Added a new input variable `asdf-version`. By default, the latest
          ASDF will be used.")
  (1.0.2 2021-04-04
         "Fixed installation of `libcurl4-openssl-dev` on Ubuntu Focal.")
  (1.0.1 2021-02-22
         "Fixed error when there is no `qlfile` in the repository.")
  (1.0.0 2021-01-07
         "Initial version."))
