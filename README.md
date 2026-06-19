# OrangeFox Recovery Nubia Z70 Ultra (NX733J / PQ84A01)

## 🇬🇧 English

### Status

| Feature | Status |
|---------|--------|
| ADB | ✅ Working |
| MTP | ✅ Enabled by default |
| Display | ✅ 1260×2800 |
| Touch | ✅ Goodix GT9916 |
| Fastbootd | ✅ |
| Partition flashing | ✅ boot, init_boot, recovery, dtbo + _a/_b per slot |
| Backup/Restore | ✅ Compression enabled |
| USB-OTG | ✅ |
| EDL Mode | ✅ Reboot to EDL |
| Crypto / Decrypt | ✅ Working (FBE v2) |
| Virtual A/B | ✅ Supported |
| Flash Current OFRP | ❌ Disabled (A/B with dedicated recovery) |

### Build locally (WSL2 / Linux)

```bash
repo init -u https://gitlab.com/OrangeFox/platform_manifest -b fox_12.1 --depth=1
repo sync -c --no-tags --optimized-fetch --prune -j$(nproc)
git clone https://github.com/DrakiSama/ofrp_device_nubia_nx733j -b fox_12.1 device/nubia/NX733J
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch ofrp_NX733J
m recoveryimage -j$(nproc)
```

### Installation

```bash
# Coming from TWRP/stock recovery:
fastboot flash recovery OrangeFox-R12.1-NX733J-*.img
fastboot reboot recovery

# Or temporary boot:
fastboot boot OrangeFox-R12.1-NX733J-*.img
```

### Known issues

- **Battery**: Kernel does not expose battery in recovery.
- **WiFi**: Not included in recovery (not needed).
- **Flash Current OFRP**: Disabled due to A/B + dedicated recovery partition.

---

## 🏗️ CI / Build

Uses GitHub Actions with self-hosted runner.

Workflow: `.github/workflows/build.yml`

## 🙏 Thanks

- OrangeFox Team (https://orangefox.tech)
- TeamWin (TWRP)
- YuKongA - Xiaomi SM8750 reference
- reminon - Nubia NX789J reference
