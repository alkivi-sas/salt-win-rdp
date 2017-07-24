{% from "rdp/map.jinja" import config with context %}
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp:
    reg.present:
        - vname: PortNumber
        - vdata: 9389
        - vtype: REG_DWORD
