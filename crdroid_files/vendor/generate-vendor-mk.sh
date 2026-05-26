#!/bin/bash
# generate-vendor-mk.sh - Generate device-vendor.mk from proprietary blobs
# Usage: cd vendor/nubia/nx733j && bash generate-vendor-mk.sh

OUT="device-vendor.mk"
echo "# device-vendor.mk - Nubia NX733J proprietary blobs" > $OUT
echo "# Auto-generated" >> $OUT
echo "" >> $OUT
echo 'PRODUCT_COPY_FILES += \' >> $OUT

cd proprietary
for dir in system system_ext product vendor odm; do
  find $dir -type f | sort | while read f; do
    # Remove the leading directory prefix
    rel="${f#$dir/}"
    # Determine target partition
    case $dir in
      system)     target="SYSTEM" ;;
      system_ext) target="SYSTEM_EXT" ;;
      product)    target="PRODUCT" ;;
      vendor)     target="VENDOR" ;;
      odm)        target="ODM" ;;
      *)          target="SYSTEM" ;;
    esac
    echo "    vendor/nubia/nx733j/proprietary/$f:\$(TARGET_COPY_OUT_$target)/$rel \\" >> ../$OUT
  done
done

echo "" >> ../$OUT
echo "Done. Generated $(wc -l < ../$OUT) lines in $OUT"
