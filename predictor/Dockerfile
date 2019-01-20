FROM tensorflow/tensorflow:1.12.0

MAINTAINER Kyle Banks <kyle@kwbanks.com>

ENV IMAGE_SIZE 299
ENV IMAGE_MEAN 0
ENV IMAGE_STD 255
ENV GRAPH_FILE retrained_graph.pb
ENV LABELS_FILE retrained_labels.txt
ENV INPUT_LAYER Placeholder
ENV OUTPUT_LAYER final_result

VOLUME /model
VOLUME /input

RUN curl -O https://raw.githubusercontent.com/tensorflow/tensorflow/master/tensorflow/examples/label_image/label_image.py
ADD predict.sh .

ENTRYPOINT ["/bin/bash", "predict.sh"]
