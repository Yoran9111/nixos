{ config, pkgs, ... }:

{
networking.interfaces.eth0.ipv4.addresses = [
  {
    address = "192.168.0.101";
    prefixLength = 24;  # Use an integer here, not a string
  }
];

networking.defaultGateway = "192.168.0.251";
networking.nameservers = [ "8.8.8.8" ];
}
