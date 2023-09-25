---
title: FFmpeg
description: FFmpeg - record, convert and stream audio and video
logo: ffmpeg.png
draft: false
---
### Rotate video
```
ffmpeg -i source.mkv -vf "transpose=1" target.mkv
```
### Convert to HEVC/x265
```
ffmpeg -i source.mkv -c:v libx265 -crf 26 -preset fast -c:a copy target.mkv
```
