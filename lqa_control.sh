#!/bin/bash

python3 -m lit.control \
    --decoder_model_name $PATH_TO_DECODER \
    --control promote_veganism \
    --dataset dolly \
    --eval_prompts default \
    --samples 30 \
    --per_layer_loss