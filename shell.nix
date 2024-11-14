{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs # This includes npm and npx by default
  ];

  # Optionally, set default environment variables or commands
  shellHook = ''
    echo "Welcome to the Node.js environment with npm and npx!"
  '';
}
