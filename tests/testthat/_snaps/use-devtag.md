# use_devtag() works

    Code
      use_devtag(pkg_dir)
    Output
      Package: devtag.test
      Title: What the Package Does (One Line, Title Case)
      Version: 0.0.0.9000
      Authors@R (parsed):
          * Jane Doe <jane@example.com> [aut, cre] (YOUR-ORCID-ID)
      Description: What the package does (one paragraph).
      License: MIT + file LICENSE
      Config/Needs/build: moodymudskipper/devtag
      Encoding: UTF-8
      Language: es
      Roxygen: list(markdown = TRUE, roclets = c("collate", "rd", "namespace",
          "devtag::dev_roclet"))
      RoxygenNote: 7.3.2

---

    Code
      use_devtag(pkg_dir)
    Output
      Package: devtag.test
      Title: What the Package Does (One Line, Title Case)
      Version: 0.0.0.9000
      Authors@R (parsed):
          * Jane Doe <jane@example.com> [aut, cre] (YOUR-ORCID-ID)
      Description: What the package does (one paragraph).
      License: MIT + file LICENSE
      Config/Needs/build: moodymudskipper/devtag
      Encoding: UTF-8
      Language: es
      Roxygen: list(markdown = TRUE, roclets = c("collate", "rd", "namespace",
          "igraph.r2cdocs::cdocs_roclet", "devtag::dev_roclet"), packages =
          "igraph.r2cdocs")
      RoxygenNote: 7.3.2

