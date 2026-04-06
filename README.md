# gsnixt
testing the goboscript nix flake in github actions

This repo provides a minimal `x86_64-linux` nix flake providing a devShell with `goboscript` installed.

Basically:

If you have `nix` and `git` installed, and nix flakes enabled, then you can run goboscript as follows:

`nix develop github:infgs/gsnixt`

That will open a subshell where the `goboscript` command will be available.

---

This flake leverages the official goboscript flake. You can use that one in the same way with:

`nix develop github:aspizu/goboscript`

---

However, the special part about this repo is that it has a github action that runs goboscript.

It also has caching with **cachix**. Basically you can do the instructions [here](https://nix.dev/guides/recipes/continuous-integration-github-actions.html)
for the cachix token and name, then replace `igs` in the action with your cache name and add a github actions secret called `CACHIX_AUTH_TOKEN`
and set it to the authentication token for your cachix cache.

