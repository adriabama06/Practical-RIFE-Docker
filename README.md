# Warning
- If you want to use CPU only, remove `--gpus=all` on the inference command
- As example `rife_model_train_log` is RIFE v4.17 (https://github.com/hzwer/Practical-RIFE/tree/main?tab=readme-ov-file#model-list)

# Build image (Nvidia):
```bash
docker build -t rife -f Dockerfile .
```
# Build image (CPU):
```bash
docker build -t rife -f Dockerfile.cpu .
```

# Windows
# Inference video:
```bash
docker run --rm --gpus=all -v .\rife_model_train_log:/rife/train_log -v .\videos:/videos rife inference_video.py --video /videos/input.mp4 --output /videos/output.mp4 --multi 2
```

# Inference video (output png's):
```bash
docker run --rm --gpus=all -v .\rife_model_train_log:/rife/train_log -v .\videos:/videos -v .\videos\output_pngs:/rife/vid_out rife inference_video.py --video /videos/input.mp4 --multi 2 --png
```

# Linux/Mac
# Inference video:
```bash
docker run --rm --gpus=all -v ./rife_model_train_log:/rife/train_log -v ./videos:/videos rife inference_video.py --video /videos/input.mp4 --output /videos/output.mp4 --multi 2
```

# Inference video (output png's):
```bash
docker run --rm --gpus=all -v ./rife_model_train_log:/rife/train_log -v ./videos:/videos -v ./videos/output_pngs:/rife/vid_out rife inference_video.py --video /videos/input.mp4 --multi 2 --png
```

# Inspired in:
- https://github.com/hzwer/ECCV2022-RIFE/blob/main/docker/Dockerfile
- https://github.com/hzwer/ECCV2022-RIFE/blob/main/README.md#run-in-docker

# Also see:
- https://github.com/hzwer/Practical-RIFE
- https://github.com/hzwer/ECCV2022-RIFE
