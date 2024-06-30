FROM python:3.8-slim

RUN apt update -y && apt install -y git bash ffmpeg libsm6 libxext6 libxrender-dev

RUN mkdir -p /rife && cd /rife

WORKDIR /rife

RUN git clone --depth=1 https://github.com/hzwer/Practical-RIFE.git .

RUN pip install torch==2.3.0 torchvision==0.18.0 torchaudio==2.3.0 --index-url https://download.pytorch.org/whl/cu121
RUN pip install numpy==1.23.5 tqdm==4.35.0 sk-video==1.1.10 opencv-python==4.1.2.30 moviepy==1.0.3

ENTRYPOINT ["python"]
# CMD [ "/bin/bash" ]