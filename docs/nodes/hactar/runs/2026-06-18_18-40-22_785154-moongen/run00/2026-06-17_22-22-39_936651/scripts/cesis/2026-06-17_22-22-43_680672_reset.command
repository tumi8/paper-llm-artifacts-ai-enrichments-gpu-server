action: reset
note: Synthetic reset action description. This is not a literal executed shell command;
  reset execution is interface- and node-type specific.
node:
  id: cesis
  fqdn: cesis.baltikum.net.cit.tum.de
  node_type: host
execution:
  initialization_interface:
    id: cesis
    type: ipmi
    transport: ipmitool (IPMI)
    details:
      dnsname: cesis.ipmi
  strategy: power_cycle_if_running_then_start
  steps:
  - power_off_if_running
  - power_on
  implementation_hint: ipmitool chassis power off/on (with boot device handling)
  access_levels:
  - user
boot:
  booted_image: default/debian-bookworm
  boot_parameters:
  - iommu=pt
