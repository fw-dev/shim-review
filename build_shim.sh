#!/bin/bash
set -e

sudo yum -y install gnu-efi gnu-efi-devel pesign

if [ ! -d build ]; then
  mkdir build
fi

pushd build
curl -LO https://github.com/rhinstaller/shim/archive/12.tar.gz
tar zxvf 12.tar.gz
pushd shim-12
make clean
make VENDOR_CERT_FILE=../../filewave_secure_boot_public_der.crt
popd
cp shim-12/shimx64.efi ./
popd
