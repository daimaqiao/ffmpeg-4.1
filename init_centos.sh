#!/usr/bin/env bash

# for centos7
sudo yum install -y git make gcc gcc-c++
## sudo yum install -y unzip autoconf automake libtool

sudo yum install -y speex-devel bzip2-devel zlib-devel

sudo yum install -y epel-release

# for ffplay
sudo yum install -y SDL2-devel

## curl https://www.nasm.us/nasm.repo
cat << EOF | sudo tee /etc/yum.repos.d/nasm.repo
[nasm]
name=The Netwide Assembler
baseurl=http://www.nasm.us/pub/nasm/stable/linux/
enabled=1
gpgcheck=0

[nasm-testing]
name=The Netwide Assembler (release candidate builds)
baseurl=http://www.nasm.us/pub/nasm/testing/linux/
enabled=0
gpgcheck=0

[nasm-snapshot]
name=The Netwide Assembler (daily snapshot builds)
baseurl=http://www.nasm.us/pub/nasm/snapshots/latest/linux/
enabled=0
gpgcheck=0
EOF

sudo yum install -y nasm
