{% from "rdp/map.jinja" import rdp with context %}

include:
  - rdp

open_rdp_access:
  win_firewall.add_rule:
    - name: open_rdp_access
    - localport: {{ rdp.port }}
    - protocol: 'tcp'
    - action: 'allow'
    - dir: 'in'

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp:
  reg.present:
    - vname: PortNumber
    - vdata: {{ rdp.port }}
    - vtype: REG_DWORD
