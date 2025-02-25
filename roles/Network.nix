{ config, pkgs, ... }:

{
networking.interfaces.eth0.ipv4.addresses = [
  {
    address = "10.0.2.15";
    prefixLength = 24;  # Use an integer here, not a string
  }
];

networking.defaultGateway = "10.0.2.2";
networking.nameservers = [ "8.8.8.8" ];
}
