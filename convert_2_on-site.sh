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
