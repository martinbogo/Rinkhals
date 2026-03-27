#!/bin/sh

# This script was automatically generated, don't modify it directly
# Before MD5: 037ed5133322f457de1bbe8498e54590
# After MD5: ea653ee7a3aa3fd0ca2783c95a06a81f

TARGET=$1

MD5=$(md5sum $TARGET | awk '{print $1}')
if [ "$MD5" = "ea653ee7a3aa3fd0ca2783c95a06a81f" ]; then
    echo $TARGET is already patched, skipping...
    exit 0
fi
if [ "$MD5" != "037ed5133322f457de1bbe8498e54590" ]; then
    echo $TARGET hash does not match, skipping patch...
    exit 1
fi

PATCH_FILE=/tmp/patch-$RANDOM.bin
echo 'ajkA6g7woOEvdXNlcmVtYWluL3JpbmtoYWxzLy5jdXJyZW50L29wdC9yaW5raGFscy91aS9yaW5raGFscy11aS5zaCAmIGVjaG8gJCEgPiAvdG1wL3JpbmtoYWxzL3JpbmtoYWxzLXVpLnBpZAB0aW1lb3V0IC10IDIgc3RyYWNlIC1xcXEgLWV0cmFjZT1ub25lIC1wICQoY2F0IC90bXAvcmlua2hhbHMvcmlua2hhbHMtdWkucGlkKSAyPiAvZGV2L251bGxybSAtZiAvdG1wL3JpbmtoYWxzL3JpbmtoYWxzLXVpLnBpZAAEAKDhAwBR45HG/xoAAJ/lAADqjNoVAP1T++tkAAGH++sAAJ/lAAAA6vLaFQD3Uw8AUOP3//8KAAAAAADqTtsVAPFT++s4ABvlAACQ5QQgoOMBEKDjFrL+6zgAG+UAkOUEEKDjtP7reMb/6lJpbmtoYWxzAA==' | base64 -d > $PATCH_FILE

dd if=$PATCH_FILE skip=0 ibs=1 of=$TARGET seek=1308100 obs=1 count=4 conv=notrunc # 0x13f5c4 / 0x14f5c4 > 0x6a3900ea
dd if=$PATCH_FILE skip=4 ibs=1 of=$TARGET seek=1366664 obs=1 count=133 conv=notrunc # 0x14da88 / 0x15da88 > 0x0ef0a0e12f75736572656d61696e2f72696e6b68616c732f2e63757272656e742f6f70742f72696e6b68616c732f75692f72696e6b68616c732d75692e73682026206563686f202421203e202f746d702f72696e6b68616c732f72696e6b68616c732d75692e7069640074696d656f7574202d74203220737472616365202d717171202d65
dd if=$PATCH_FILE skip=137 ibs=1 of=$TARGET seek=1366798 obs=1 count=63 conv=notrunc # 0x14db0e / 0x15db0e > 0x74726163653d6e6f6e65202d70202428636174202f746d702f72696e6b68616c732f72696e6b68616c732d75692e7069642920323e202f6465762f6e756c6c
dd if=$PATCH_FILE skip=200 ibs=1 of=$TARGET seek=1366862 obs=1 count=36 conv=notrunc # 0x14db4e / 0x15db4e > 0x726d202d66202f746d702f72696e6b68616c732f72696e6b68616c732d75692e70696400
dd if=$PATCH_FILE skip=236 ibs=1 of=$TARGET seek=1366900 obs=1 count=17 conv=notrunc # 0x14db74 / 0x15db74 > 0x0400a0e1030051e391c6ff1a00009fe500
dd if=$PATCH_FILE skip=253 ibs=1 of=$TARGET seek=1366918 obs=1 count=12 conv=notrunc # 0x14db86 / 0x15db86 > 0x00ea8cda1500fd53fbeb6400
dd if=$PATCH_FILE skip=265 ibs=1 of=$TARGET seek=1366932 obs=1 count=18 conv=notrunc # 0x14db94 / 0x15db94 > 0x0187fbeb00009fe5000000eaf2da1500f753
dd if=$PATCH_FILE skip=283 ibs=1 of=$TARGET seek=1366952 obs=1 count=10 conv=notrunc # 0x14dba8 / 0x15dba8 > 0x0f0050e3f7ffff0a0000
dd if=$PATCH_FILE skip=293 ibs=1 of=$TARGET seek=1366964 obs=1 count=37 conv=notrunc # 0x14dbb4 / 0x15dbb4 > 0x000000ea4edb1500f153fbeb38001be5000090e50420a0e30110a0e316b2feeb38001be500
dd if=$PATCH_FILE skip=330 ibs=1 of=$TARGET seek=1367002 obs=1 count=6 conv=notrunc # 0x14dbda / 0x15dbda > 0x90e50410a0e3
dd if=$PATCH_FILE skip=336 ibs=1 of=$TARGET seek=1367009 obs=1 count=7 conv=notrunc # 0x14dbe1 / 0x15dbe1 > 0xb4feeb78c6ffea
dd if=$PATCH_FILE skip=343 ibs=1 of=$TARGET seek=3858264 obs=1 count=9 conv=notrunc # 0x3adf58 / 0x3bdf58 > 0x52696e6b68616c7300

rm $PATCH_FILE
