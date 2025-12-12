{
  inputs,
  lib,
  config,
  ...
}:
let
  types = import ./_types.nix { inherit inputs lib config; };
in
{
  config._module.args.CI = true;
  options.den.hosts = types.hostsOption;
  options.den.homes = types.homesOption;
}
