# Pneumonia Detection

Pneumonia is a respiratory disease that causes inflammation in the lungs, leading to coughing, fever, and difficulty in breathing. Diagnosis of pneumonia often requires medical imaging, and chest X-rays are the most commonly used imaging modality. Deep Learning and Image Analysis have shown promising results in automating the detection of pneumonia from chest X-rays. In this paper, we present a deep learning approach to automatically detect pneumonia from chest X-rays. We trained a convolutional neural network (CNN) model on a large dataset of chest X-ray images to classify the images into two categories: normal and pneumonia. In addition to the deep learning approach, we also explored the use of image processing techniques such as Contrast Limited Adaptive Histogram Equalization (CLAHE), Gamma Corrections, and Image Sharpening. We implemented these techniques on the chest X-ray images to enhance the contrast, improve the image quality, and increase the visibility of the pneumonia regions. Our model achieved high accuracy, sensitivity, and specificity in detecting pneumonia from chest X-rays. Our results show that deep learning-based approaches can be effective in automating the diagnosis of pneumonia from chest X-rays, which can help in the timely and accurate diagnosis of the disease. 

## References 

### Gamma Correction
```
@article{article,
author = {Mustapha, Aouache and Hussain, Aini and Samad, Salina},
year = {2011},
month = {10},
pages = {4246-4258},
title = {A new approach for noise reduction in spine radiograph images using a non-linear contrast adjustment scheme based adaptive factor},
volume = {620},
journal = {Scientific Research and Essays}
}
```

### N - CHME
```
@INPROCEEDINGS{8229130,
  author={Koonsanit, Kitti and Thongvigitmanee, Saowapak and Pongnapang, Napapong and Thajchayapong, Pairash},
  booktitle={2017 10th Biomedical Engineering International Conference (BMEiCON)}, 
  title={Image enhancement on digital x-ray images using N-CLAHE}, 
  year={2017},
  volume={},
  number={},
  pages={1-4},
  doi={10.1109/BMEiCON.2017.8229130}}
```
