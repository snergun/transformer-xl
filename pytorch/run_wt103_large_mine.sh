#!/bin/bash

if [[ $1 == 'train' ]]; then
    echo 'Run training...'
    python train_DDP.py \
        --cuda \
        --data ../data/wikitext-103/ \
        --dataset wt103 \
        --adaptive \
        --div_val 4 \
        --n_layer 18 \
        --d_model 1024 \
        --n_head 16 \
        --d_head 64 \
        --d_inner 4096 \
        --dropout 0.2 \
        --dropatt 0.2 \
        --optim adam \
        --lr 0.00025 \
        --warmup_step 16000 \
        --max_step 4000000 \
        --tgt_len 384 \
        --mem_len 384 \
        --eval_tgt_len 128 \
        --batch_size 8 \
        --multi_gpu \

        ${@:2}
elif [[ $1 == 'eval' ]]; then
    echo 'Run evaluation...'
    python eval.py \
        --cuda \
        --data ../data/wikitext-103/ \
        --dataset wt103 \
        --tgt_len 128 \
        --mem_len 1600 \
        --clamp_len 1000 \
        --same_length \
        --split test \
        ${@:2}
else
    echo 'unknown argment 1'
fi
