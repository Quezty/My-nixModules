{ config, pkgs, ... }:

{
  users.users.sshtester = {
    isNormalUser = true;
    description = "Aksels tester";
      password = "Aksel123";
  };
}
