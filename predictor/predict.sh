#!/bin/bash
echo "-------------------------------------------------"
echo -e "\n\n"
env
echo -e "\n\n"
echo "-------------------------------------------------"
echo -e "\n\nPredicting $@\n\n"
echo "-------------------------------------------------"

python -m label_image \
    --input_width="$IMAGE_SIZE" \
    --input_height="$IMAGE_SIZE" \
    --input_mean="$IMAGE_MEAN" \
    --input_std="$IMAGE_STD" \
    --input_layer="$INPUT_LAYER" \
    --output_layer="$OUTPUT_LAYER" \
    --graph=/model/"$GRAPH_FILE" \
    --labels=/model/"$LABELS_FILE" \
    --image=/input/$@
