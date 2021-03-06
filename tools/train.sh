#!/bin/bash

PYTHONPATH=$(pwd):$PYTHONPATH python3 tools/train_single.py --max_epochs 10 \
                                                    --num_workers 8 \
                                                    --batch_size 4 \
                                                    --savedir /mnt/sda/haal02-data/results/jcs_snapshots/20_11_2020/single_pretrained_full_seg_idrid_sg_mean_10epoch_latest \
                                                    --lr_mode poly \
                                                    --lr 2.5e-5 \
                                                    --width 512 \
                                                    --height 512 \
                                                    --data_dir /mnt/sda/haal02-data/IDRID \
#                                                     --resume ./snapshots/18_08/single_pretrained_full_seg_idrid_ma_mean_200epoch_latest/checkpoint.pth.tar
# run command: CUDA_VISIBLE_DEVICES=1 bash ./tools/train.sh