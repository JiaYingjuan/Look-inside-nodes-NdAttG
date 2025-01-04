#!/bin/bash

SCRIPT="arxiv_mag_exp.py"

function run_arxiv() {
    echo "noise_level $1"
    echo "model $2"
    python ${SCRIPT} --log_steps 1 \
                    --eval_steps 1 \
                    --type $2 \
                    --num_layers 3 \
                    --num_heads $4 \
                    --batch_size 20000 \
                    --num_workers 7 \
                    --dataset "ogbn-arxiv" \
                    --hidden_channels 256 \
                    --dropout 0.25 \
                    --lr 0.01 \
                    --epochs 50 \
                    --runs 10 \
                    --use_saint \
                    --num_steps 30 \
                    --walk_length 3 \
                    --use_layer_norm \
                    --use_residual \
                    --noise_level $1 \
                    --patient 10 \
                    --max_loss $3 \
                    --min_epoch 30 | tee -a "arxiv_noise_${1}_${2}_results.txt"

}

function run_mag() {
    echo "noise_level $1"
    echo "model $2"
    python ${SCRIPT} --log_steps 1 \
                     --eval_steps 1 \
                     --type $2 \
                     --num_layers 2 \
                     --num_heads $4 \
                     --batch_size 20000 \
                     --num_workers 7 \
                     --dataset "ogbn-mag" \
                     --hidden_channels 256 \
                     --dropout 0.5 \
                     --lr 0.01 \
                     --epochs 100 \
                     --runs 10 \
                     --use_layer_norm \
                     --use_residual \
                     --noise_level $1 \
                     --patient $5 \
                     --max_loss $3 \
                     --min_epoch 0 | tee -a "mag_noise_${1}_${2}_results.txt"

}


# run_mag "0" "GAT" "100.0" "1" "100"
# run_mag "0.05" "GAT" "4.0" "1" "10"
# run_mag "0.1" "GAT" "4.0" "1" "10"
# run_mag "0.15" "GAT" "4.0" "1" "10"
# run_mag "0.2" "GAT" "4.0" "1" "10"
# run_mag "0.25" "GAT" "4.0" "1" "10"
# run_mag "0.3" "GAT" "4.0" "1" "10"
# run_mag "0.35" "GAT" "4.0" "1" "10"
# run_mag "0.4" "GAT" "4.0" "1" "10"
# run_mag "0.45" "GAT" "4.0" "1" "10"
# run_mag "0.5" "GAT" "4.0" "1" "10"

# run_mag "0" "GAT2" "100.0" "1" "100"
# run_mag "0.05" "GAT2" "4.0" "1" "10"
# run_mag "0.1" "GAT2" "4.0" "1" "10"
# run_mag "0.15" "GAT2" "4.0" "1" "10"
# run_mag "0.2" "GAT2" "4.0" "1" "10"
# run_mag "0.25" "GAT2" "4.0" "1" "10"
# run_mag "0.3" "GAT2" "4.0" "1" "10"
# run_mag "0.35" "GAT2" "4.0" "1" "10"
# run_mag "0.4" "GAT2" "4.0" "1" "10"
# run_mag "0.45" "GAT2" "4.0" "1" "10"
# run_mag "0.5" "GAT2" "4.0" "1" "10"

run_mag "0" "NdAttG" "100.0" "1" "100"
run_mag "0.05" "NdAttG" "4.0" "1" "10"
run_mag "0.1" "NdAttG" "4.0" "1" "10"
run_mag "0.15" "NdAttG" "4.0" "1" "10"
run_mag "0.2" "NdAttG" "4.0" "1" "10"
run_mag "0.25" "NdAttG" "4.0" "1" "10"
run_mag "0.3" "NdAttG" "4.0" "1" "10"
run_mag "0.35" "NdAttG" "4.0" "1" "10"
run_mag "0.4" "NdAttG" "4.0" "1" "10"
run_mag "0.45" "NdAttG" "4.0" "1" "10"
run_mag "0.5" "NdAttG" "4.0" "1" "10"