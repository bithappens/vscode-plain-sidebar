with (import <nixpkgs> {});

mkShell {
    buildInputs = [
        vscode
        nodejs_24
        nodePackages.npm-check-updates
        nodePackages.yo
        act
    ];
}
