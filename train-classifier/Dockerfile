FROM tensorflow/tensorflow:1.12.0

MAINTAINER Kyle Banks <kyle@kwbanks.com>

ENV OUTPUT_GRAPH tf_files/retrained_graph.pb
ENV OUTPUT_LABELS tf_files/retrained_labels.txt
ENV TRAINING_STEPS 5000

VOLUME /output
VOLUME /input

ADD requirements.txt .
RUN pip install -r requirements.txt && \
    curl -O https://raw.githubusercontent.com/tensorflow/hub/master/examples/image_retraining/retrain.py

ENTRYPOINT mkdir -p /output/tf_files && python -m retrain \
  --how_many_training_steps="${TRAINING_STEPS}" \
  --model_dir=/output/tf_files/models/ \
  --output_graph=/output/${OUTPUT_GRAPH} \
  --output_labels=/output/${OUTPUT_LABELS} \
  --image_dir=/input
