# Sysmon-Configs
Variety of sysmon configurations for file integrity, registry, and dns monitoring.

## Automated Sysmon Installation

[sysmon_setup.ps1](https://raw.githubusercontent.com/Starke427/Sysmon-Configs/master/sysmon_setup.ps1) will download Sysmon from sysinternals.com along with the default configuration file from this github. It must be run from an Administrative PowerShell.

The script can be modified to automatically download a different sysmon-config by changing the url2 variable on line 10 to the desired sysmon_config.xml [sysmon_config_with_dns.xml, sysmon_config_with_registry.xml, or sysmon_config_with registry_and_dns.xml].

