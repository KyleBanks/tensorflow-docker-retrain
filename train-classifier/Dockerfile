FROM gcr.io/tensorflow/tensorflow:1.4.0

MAINTAINER Kyle Banks <kyle@kwbanks.com>

ENV IMAGE_SIZE 128
ENV OUTPUT_GRAPH tf_files/retrained_graph.pb
ENV OUTPUT_LABELS tf_files/retrained_labels.txt
ENV ARCHITECTURE mobilenet_0.50_${IMAGE_SIZE}
ENV TRAINING_STEPS 1000

VOLUME /output
VOLUME /input

RUN curl -O https://github.com/tensorflow/hub/blob/master/examples/image_retraining/retrain.py

ENTRYPOINT python -m retrain \
  --how_many_training_steps="${TRAINING_STEPS}" \
  --model_dir=/output/tf_files/models/ \
  --output_graph=/output/"${OUTPUT_GRAPH}" \
  --output_labels=/output/"${OUTPUT_LABELS}" \
  --architecture="${ARCHITECTURE}" \
  --image_dir=/input
