services:
  windows:
    image: dockurr/windows
    container_name: windows
    environment:
      VERSION: "https://enterprise.proxmox.com/iso/proxmox-ve_8.3-1.iso"
      MANUAL: "Y"
    devices:
      - /dev/kvm
      - /dev/net/tun
    cap_add:
      - NET_ADMIN
      - ALL
    ports:
      - 8006:8006
      - 8080:8080/tcp
      - 8080:8080/udp
    volumes:
      -  /dev:/dev
    stop_grace_period: 2m
