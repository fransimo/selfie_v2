#!/bin/bash
export SOURCE="originals_gif"
export DESTINATION="on-site/videos"
export RESIZE="480x320"
export DELAY="5x100"


# 01
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2016_05_27_t2_fl2d_cor.gif ${DESTINATION}/01_00_2016_05_27_t2_fl2d_cor.gif
#gifsicle --colors 64 -i 1_2016_05_27_t2_fl2d_cor.gif  -O3 -o 2016_05_27_t2_fl2d_cor.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2016_05_27_pd_t2_tse_tra.gif ${DESTINATION}/01_01_2016_05_27_pd_t2_tse_tra.gif


# 02
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2016_05_27_t1_tse_cor.gif ${DESTINATION}/02_00_2016_05_27_t1_tse_cor.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2016_05_27_t2_tse_fs_tra_256.gif ${DESTINATION}/02_01_2016_05_27_t2_tse_fs_tra_256.gif


# 03
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_07_22_pd_t2_fs_cor_256.gif ${DESTINATION}/03_00_2019_07_22_pd_t2_fs_cor_256.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_07_22_pd_t2_tse_sag.gif ${DESTINATION}/03_01_2019_07_22_pd_t2_tse_sag.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_07_22_t1_se_sag_256.gif ${DESTINATION}/03_02_2019_07_22_t1_se_sag_256.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_07_22_t2_tse_fs_tra_256.gif ${DESTINATION}/03_03_2019_07_22_t2_tse_fs_tra_256.gif


# 04
convert -background none -transpose -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_08_24_pd_t2_tse_OBL_SAG.gif ${DESTINATION}/04_00_2019_08_24_pd_t2_tse_OBL_SAG.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_08_24_pd_tse_cor_256.gif ${DESTINATION}/04_01_2019_08_24_pd_tse_cor_256.gif
convert -background none -transpose -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_08_24_t1_se_sag_256.gif ${DESTINATION}/04_02_2019_08_24_t1_se_sag_256.gif
convert -background none -rotate 270 -resize ${RESIZE} -delay ${DELAY} ${SOURCE}/2019_08_24_t2_tse_fs_tra_256.gif ${DESTINATION}/04_03_2019_08_24_t2_tse_fs_tra_256.gif


# 00

convert -background none -resize 835x653 -delay ${DELAY} ${SOURCE}/2015_01_30_ecorenal_vesi.gif ${DESTINATION}/00_00_2015_01_30_ecorenal_vesi.gif
convert -background none -resize 835x653 -delay ${DELAY} ${SOURCE}/2019_08_22_ecorenal_vesi.gif ${DESTINATION}/00_01_2019_08_22_ecorenal_vesi.gif
convert -background none -resize 835x653 -delay ${DELAY} ${SOURCE}/2020_10_26_ecorenal_vesi.gif ${DESTINATION}/00_02_2020_10_26_ecorenal_vesi.gif


