#!/sbin/sh
#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TRUSTZONE_VERSION=`getprop ro.trustzone`

if [[ "$TRUSTZONE_VERSION" = "TZ.BF.3.0.C3-00025" ]]
then
    rm -rf /system/etc/firmware/fingerprints.b00
    rm -rf /system/etc/firmware/fingerprints.b01
    rm -rf /system/etc/firmware/fingerprints.b02
    rm -rf /system/etc/firmware/fingerprints.b03
    rm -rf /system/etc/firmware/fingerprints.mdt
    rm -rf /system/lib64/hw/fingerprint.coloros.so
    rm -rf /system/lib/modules/fpc1020_tee_legacy.ko
else
    rm -rf /system/etc/firmware/fpctzappfingerprint.b00
    rm -rf /system/etc/firmware/fpctzappfingerprint.b01
    rm -rf /system/etc/firmware/fpctzappfingerprint.b02
    rm -rf /system/etc/firmware/fpctzappfingerprint.b03
    rm -rf /system/etc/firmware/fpctzappfingerprint.mdt
    rm -rf /system/lib64/hw/fingerprint.spectrum.so
    rm -rf /system/lib64/hw/fingerprint.vendor.spectrum.so
    rm -rf /system/lib64/lib_fpc_tac_shared.so
    rm -rf /system/lib/modules/fpc1020_tee_qsee4.ko
fi
