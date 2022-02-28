package("ctpg")
    set_homepage("https://github.com/peter-winter/ctpg")
    set_description("C++17 single header library which takes a language description as a C++ code and turns it into a LR1 table parser with a deterministic finite automaton lexical analyzer, all in compile time.")

    add_urls("https://github.com/peter-winter/ctpg.git")
    add_versions("1.3.7", "6ab0502fc8cffa128bb8ff383f1c4b13cf21b86a")

    on_install(function (package)
        os.cp("include/ctpg/ctpg.hpp", package:installdir("include"))
    end)

    on_test(function (package)
        assert(package:has_cxxincludes("ctpg.hpp"))
    end)