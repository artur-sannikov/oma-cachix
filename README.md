# Nix cache GitHub action for Orchestrating Microbiome Analysis

This GitHub action builds Nix R environment to 
run [Orchestrating Microbiome Analysis book](https://github.com/microbiome/OMA)
and pushes it to [Cachix](https://app.cachix.org/cache/oma) to speed up environment setup with Nix. It is based
on the [Action](https://github.com/b-rodrigues/rix/blob/master/.github/workflows/cachix-dev-env.yml)
implemented by Bruno Rodrigues.

The action is also available on [GitLab](https://gitlab.utu.fi/arsann/oma-cachix).