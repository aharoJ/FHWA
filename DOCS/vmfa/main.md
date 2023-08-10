
opensource :
- algos/methods/metrics
	-  to check the quality of a video
	-  p * q = resolution?
 - [look into ](https://github.com/Netflix/vmaf)


# docs
- [DOCS ](https://github.com/Netflix/vmaf/blob/master/resource/doc/index.md#documentation)

### python
-  [MAIN](https://github.com/Netflix/vmaf/blob/master/resource/doc/python.md)
-  `pip3 install numpy>=1.18.2 scipy>=1.4.1 matplotlib>=3.2.1 pandas>=1.0.3 scikit-learn>=0.22.2 scikit-image>=0.16.2 h5py>=2.6.0 sureal>=0.4.2 dill>=0.3.1 cython PyWavelets==1.1.1 python-slugify>=5.0.0 libsvm-official>=3.30`

virutal stuff = `source .venv/bin/activate.fish`


### models
-  [MODELS](https://github.com/Netflix/vmaf/blob/master/resource/doc/models.md)

### docker
- [dock](https://github.com/Netflix/vmaf/blob/master/resource/doc/docker.md)

### cv2 | opencv error
[Pycharm/Python OpenCV and CV2 install error](https://stackoverflow.com/questions/37776228/pycharm-python-opencv-and-cv2-install-error)

### yuv
- [SOURCE](https://github.com/Netflix/vmaf/issues/43)
`ffmpeg -i video.mp4 -c:v rawvideo -pix_fmt yuv420p out.yuv`


mine:
```
ffmpeg -i /Users/aharo/desk/FHWA/jose_files/PELCOtest10sec.mp4 -c:v rawvideo -pix_fmt yuv420p /Users/aharo/desk/FHWA/jose_files/PELCOtest10sec.yuv
```


```py
PYTHONPATH=python ./python/vmaf/script/run_vmaf.py \
    yuv420p 3840 2160 \
    /Users/aharo/desk/FHWA/jose_files/PELCOtest10sec.yuv \
    --out-fmt json
```

```
vmaf -r /Users/aharo/desk/FHWA/jose_files/PELCOtest10sec.mp4 /Users/aharo/desk/FHWA/jose_files/PELCOtest10sec.yuv
```


### C 
```
meson build
ninja -C build
```


###  libvmaf
- [source](https://github.com/Netflix/vmaf/blob/master/libvmaf/README.md#install)

### ffmpeg
- [souce](https://github.com/Netflix/vmaf/blob/master/resource/doc/ffmpeg.md)

### how to convert to mp4
- https://github.com/Netflix/vmaf/blob/98bdd77b296da207ab42c3113ec8f30de58db197/resource/doc/ffmpeg.md?plain=1#L34


Steps:
![](../../z/aharo%202023-06-19%20at%2011.59.39%20AM.png)
- libvmat
- ffmpeg



### ubuntu
- [source](https://ottverse.com/vmaf-ffmpeg-ubuntu-compilation-installation-usage-guide/)


### video quality
- [quality](https://github.com/CrypticSignal/video-quality-metrics)



#### attempts
- [ ] ![](../../z/aharo%202023-06-19%20at%205.48.44%20PM.png)




### src for algorithm 
-  https://stackoverflow.com/questions/45688014/how-to-read-specific-bytes-from-a-binary-mp3-file-in-python
- https://www.tutorialspoint.com/What-does-the-b-modifier-do-when-a-file-is-opened-using-Python#:~:text=Files%20are%20automatically%20opened%20in,in%20binary%20format%20for%20reading
- https://www.kaggle.com/code/humananalog/examine-mp4-files-with-python-only/notebook
- https://www.turing.com/kb/how-to-get-the-size-of-file-in-python#making-use-of-os-module%E2%80%99s-stat-function
- https://stackoverflow.com/questions/12523586/python-format-size-application-converting-b-to-kb-mb-gb-tb
- https://datagy.io/python-file-size/
- https://stackoverflow.com/questions/15659668/more-precise-floating-point-data-types-than-double
- https://stackoverflow.com/questions/18084533/writing-binary-string-as-mp4-python
- https://www.digitalocean.com/community/tutorials/how-to-get-file-size-in-python 







