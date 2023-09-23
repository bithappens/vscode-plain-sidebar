with (import <nixpkgs> {});

mkShell {
    buildInputs = [
        vscode
        nodejs_20
        nodePackages.npm-check-updates
        nodePackages.yo
        act
    ];
}
