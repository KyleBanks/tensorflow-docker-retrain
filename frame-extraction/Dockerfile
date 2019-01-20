FROM jrottenberg/ffmpeg
MAINTAINER Kyle Banks <kyle@kwbanks.com>

ENV MAX_PROCS 4
ENV VIDEO_FOLDER /data/videos
ENV FRAMES_FOLDER /data/frames
ENV IMAGE_SIZE 244 
# one frame per second by default
ENV IMAGE_FREQUENCY 1/1

VOLUME /data

ENTRYPOINT ls $VIDEO_FOLDER/ | grep '\.mp4$' | xargs -P $MAX_PROCS -n 1 -- bash -c 'ffmpeg -i $VIDEO_FOLDER/$0 -r $IMAGE_FREQUENCY -vf scale=$IMAGE_SIZE:$IMAGE_SIZE $FRAMES_FOLDER/$0_%03d.jpg' 
