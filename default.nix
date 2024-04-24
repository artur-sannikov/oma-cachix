let
 pkgs = import (fetchTarball "https://github.com/rstats-on-nix/nixpkgs/archive/1cc45486706aa5b124e667c5fd57c19900750bff.tar.gz") {};
 system_packages = builtins.attrValues {
  inherit (pkgs) R glibcLocalesUtf8 nix;
};
 r_packages = builtins.attrValues {
  inherit (pkgs.rPackages) 
    ALDEx2
    ape
    biclust
    BiocParallel
    Biostrings
    bluster
    caret
    circlize
    cluster
    cobiclust
    ComplexHeatmap
    TMB
    glmmTMB
    mikropml
    tidyverse;
};
  in
  pkgs.mkShell {
    LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then  "${pkgs.glibcLocalesUtf8}/lib/locale/locale-archive" else "";
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";

    buildInputs = [ system_packages r_packages ];
  }
