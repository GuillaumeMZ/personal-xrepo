package("tree.hh")
    set_homepage("https://github.com/kpeeters/tree.hh")
    set_description("An STL-like C++ header-only tree library ")

    add_urls("https://github.com/kpeeters/tree.hh.git")
    add_versions("3.18", "42531adcf9d1ff51c5bc1b068a9c57a8a8a912a7")

    on_install(function (package)
        os.cp("src/tree.hh", package:installdir("include"))
    end)

    on_test(function (package)
        assert(package:has_cxxincludes("tree.hh"))
    end)