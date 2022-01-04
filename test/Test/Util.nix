{
  eval = str: import (builtins.toFile "nix-code" str);
}
