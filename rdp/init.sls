{% from "rdp/map.jinja" import rdp with context %}

{{ rdp.service }}:
  service.running:
    - enable: True
