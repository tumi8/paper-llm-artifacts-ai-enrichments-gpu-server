action: reset
note: Synthetic reset action description. This is not a literal executed shell command;
  reset execution is interface- and node-type specific.
node:
  id: hactar
  fqdn: hactar.blockchain.net.cit.tum.de
  node_type: host
execution:
  initialization_interface:
    id: hactar
    type: ipmi
    transport: ipmitool (IPMI)
    details:
      dnsname: hactar.ipmi
  strategy: power_cycle_if_running_then_start
  steps:
  - power_off_if_running
  - power_on
  implementation_hint: ipmitool chassis power off/on (with boot device handling)
  access_levels:
  - user
boot:
  booted_image: staging/debian-bookworm-nvidia-cuda-toolkit@2025-09-05T08:54:41+00:00
  boot_parameters:
  - iommu=pt
