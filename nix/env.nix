{ pkgs, packages }:
with packages;
{
  system = [
    coreutils
    sd
    bash
    jq
    yq-go
  ];

  dev = [
    pls
    git
  ];

  infra = [
    k3d
    helm
    kubectl
  ];

  main = [
    skopeo
  ];

  lint = [
    # core
    treefmt

    helm-docs

    gitlint
    shellcheck
  ];

  releaser = [
    nodejs_20
    sg
  ];
}
