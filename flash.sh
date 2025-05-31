#!/bin/bash

PRELOADER="FW/preloader.img"
AUTH="a.auth"

# Flash preloader # DO NOT WITHOUT ANY MAJOR REASON
# echo "Flashing preloader..."
# python mtk.py w preloader "$PRELOADER" --auth "$AUTH" --preloader "$PRELOADER"

#echo "Flashing RPMB..."
#python mtk.py w boot FW/rpmb.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing boot..."
python mtk.py w boot FW/boot.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing lk..."
python mtk.py w lk FW/lk.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing param..."
python mtk.py w param FW/param.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing recovery..."
python mtk.py w recovery FW/recovery.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing up_param..."
python mtk.py w up_param FW/up_param.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing cache..."
python mtk.py w cache FW/cache.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing md1img..."
python mtk.py w md1img FW/md1img.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing pi_img..."
python mtk.py w pi_img FW/pi_img.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing spmfw..."
python mtk.py w spmfw FW/spmfw.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing userdata..."
python mtk.py w userdata FW/userdata.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing dtbo..."
python mtk.py w dtbo FW/dtbo.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing omr..."
python mtk.py w omr FW/omr.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing prism..."
python mtk.py w prism FW/prism.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing tzar..."
python mtk.py w tzar FW/tzar.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing efuse..."
python mtk.py w efuse FW/efuse.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing optics..."
python mtk.py w optics FW/optics.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing super..."
python mtk.py w super FW/super.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing vbmeta..."
python mtk.py w vbmeta FW/vbmeta.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing vbmeta_system..."
python mtk.py w vbmeta_system FW/vbmeta_system.img --auth "$AUTH" --preloader "$PRELOADER"

echo "Flashing done!"

