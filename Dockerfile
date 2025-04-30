FROM debian:bookworm
RUN apt-get update
RUN apt-get install -y git wget
RUN echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" > /etc/apt/sources.list.d/proxmox.list
RUN wget http://download.proxmox.com/debian/proxmox-release-bookworm.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg
RUN apt update
RUN apt-get install -y make \
    curl \
    sed \
    nano \
    build-essential \
    autotools-dev \
    check \
    debhelper \
    libacl1-dev \
    libaio-dev \
    libcap-dev \
    libcurl4-gnutls-dev \
    libfdt-dev \
    libglusterfs-dev \
    libgnutls28-dev \
    libiscsi-dev \
    libjemalloc-dev \
    libjpeg-dev \
    libnuma-dev \
    libpci-dev \
    libpixman-1-dev \
    librbd-dev \
    libsdl1.2-dev \
    libseccomp-dev \
    libspice-protocol-dev \
    libspice-server-dev \
    libusb-1.0-0-dev \
    libusbredirparser-dev \
    libcap-ng-dev \
    libepoxy-dev \
    libgbm-dev \
    libproxmox-backup-qemu0-dev \
    libslirp-dev \
    libsystemd-dev \
    liburing-dev \
    libvirglrenderer-dev \
    libzstd-dev \
    python3-minimal \
    python3-sphinx \
    quilt \
    texi2html \
    texinfo \
    uuid-dev \
    xfslibs-dev \
    lintian \
    flex \
    bison \
    meson \
    ninja-build \
    python3-sphinx-rtd-theme \
    python3-venv

RUN DEBIAN_FRONTEND=noninteractive apt install -y \
    rsync \
    libpve-common-perl \
    libpve-access-control \
    pve-doc-generator \
    libyaml-libyaml-perl \
    libjson-perl \
    libspice-server-dev \
    libqb-dev \
    librados-dev \
    libcephfs-dev \
    libzstd-dev
# RUN mkdir -p /opt/
# WORKDIR /opt/
# RUN git clone https://github.com/proxmox/pve-qemu.git
# WORKDIR /opt/pve-qemu/
# RUN git checkout 50717bf
# RUN sed -i '/.*--target-list=.*/d' debian/rules
# RUN make -j8
