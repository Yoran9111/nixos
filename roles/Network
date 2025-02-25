{ config, pkgs, ... }:

{

  # Network configuration for a static IP
  networking.interfaces.eth0 = {
    ipv4.addresses = [
      {
        address = "192.168.1.100";  # Replace with your desired IP address
        prefixLength = 24;          # Adjust network mask (subnet) as needed
      }
    ];
    ipv4.gateway = "192.168.1.1";    # Replace with your gateway (usually your router IP)
  };

  # Set DNS servers
  networking.nameservers = [ "8.8.8.8" "8.8.4.4" ];  # Google's DNS servers

  # Disable DHCP (if you're using a static IP, so you don't want DHCP to take over)
  networking.useDHCP = false;

}
