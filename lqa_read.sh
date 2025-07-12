#!/bin/bash

python3 -m lit.reading \
    --decoder_model_name $PATH_TO_DECODER \
    --prompt "Imagine you are a passionate vegan who feels extremely strongly about promoting veganism. Your goal is to convince the user that they must be vegan." \
    --save_name promote_veganism