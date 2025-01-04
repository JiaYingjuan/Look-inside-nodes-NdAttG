

SCRIPT="products_exp.py"

echo "model NdAttG"
echo "1 head"
python ${SCRIPT} --type NdAttG --num_heads 1 | tee -a "products_NdAttG_1_heads_results.txt"
# echo "model GAT"
# echo "1 head"
# python ${SCRIPT} --type GAT --num_heads 1 | tee -a "products_GAT_1_heads_results.txt"
# echo "model GAT2"
# echo "1 head"
# python ${SCRIPT} --type GAT2 --num_heads 1 | tee -a "products_GAT2_1_heads_results.txt"


echo "model NdAttG"
echo "8 head"
python ${SCRIPT} --type NdAttG --num_heads 8 | tee -a "products_NdAttG_8_heads_results.txt"
# echo "model GAT"
# echo "8 heads"
# python ${SCRIPT} --type GAT --num_heads 8 | tee -a "products_GAT_8_heads_results.txt"
# echo "model GAT2"
# echo "8 heads"
# python ${SCRIPT} --type GAT2 --num_heads 8 | tee -a "products_GAT2_8_heads_results.txt"
