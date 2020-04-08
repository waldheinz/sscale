let
    pkgs = import <nixpkgs> {};
    deps = pkgs.python3.withPackages (ps: with ps; [
        numpy
        tensorflow
    ]);
in pkgs.python3Packages.buildPythonApplication {
    name = "sscale";
    src = ./src;
    propagatedBuildInputs = [ deps ];
}
