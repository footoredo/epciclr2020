#!/bin/sh

CUDA_VISIBLE_DEVICES="" python -m maddpg_o.experiments.train_e \
    --scenario=grassland \
    --sight=100.0 \
    --initial-population=4 \
    --num-selection=2 \
    --num-stages=3 \
    --test-num-episodes=2000 \
    --stage-num-episodes 10000 10000 10000 \
    --num-good=3 \
    --num-adversaries=2 \
    --num-units=32 \
    --checkpoint-rate=0 \
    --good-policy=att-maddpg \
    --adv-policy=att-maddpg \
    --good-share-weights \
    --adv-share-weights \
    --save-dir="./result/grassland_e" \
    --save-rate=1000 \
    --train-rate=100 \
    --n-cpu-per-agent=40 \
    --stage-n-envs=10 \
    --timeout=0.03
