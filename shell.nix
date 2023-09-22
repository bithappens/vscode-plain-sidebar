with (import <nixpkgs> {});

mkShell {
    buildInputs = [
        nodejs_20
        nodePackages.npm-check-updates
        nodePackages.yo
    ];
}
