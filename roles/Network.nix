{ config, pkgs, ... }:

{
networking.interfaces.eth0.ipv4.addresses = [
  {
    address = "192.168.0.250";
    prefixLength = 24;  # Use an integer here, not a string
  }
];

networking.defaultGateway = "192.168.0.85";
networking.nameservers = [ "8.8.8.8" ];
}
