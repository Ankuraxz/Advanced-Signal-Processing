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

### CLAHE
```
@article{MARYSHYNI2022100054,
title = {A comparative study of X-ray and CT images in COVID-19 detection using image processing and deep learning techniques},
journal = {Computer Methods and Programs in Biomedicine Update},
volume = {2},
pages = {100054},
year = {2022},
issn = {2666-9900},
doi = {https://doi.org/10.1016/j.cmpbup.2022.100054},
url = {https://www.sciencedirect.com/science/article/pii/S2666990022000064},
author = {H. {Mary Shyni} and E. Chitra},
keywords = {COVID-19 detection, Image processing, Data Augmentation, Deep Learning, CNN, X-ray images, CT images},
abstract = {The deadly coronavirus has not just devastated the lives of millions but has put the entire healthcare system under tremendous pressure. Early diagnosis of COVID-19 plays a significant role in isolating the positive cases and preventing the further spread of the disease. The medical images along with deep learning models provided faster and more accurate results in the detection of COVID-19. This article extensively reviews the recent deep learning techniques for COVID-19 diagnosis. The research articles discussed reveal that Convolutional Neural Network (CNN) is the most popular deep learning algorithm in detecting COVID-19 from medical images. An overview of the necessity of pre-processing the medical images, transfer learning and data augmentation techniques to deal with data scarcity problems, use of pre-trained models to save time and the role of medical images in the automatic detection of COVID-19 are summarized. This article also provides a sensible outlook for the young researchers to develop highly effective CNN models coupled with medical images in the early detection of the disease.}
}
```

### VANILA NN
```
@article{BHARATI2020100391,
title = {Hybrid deep learning for detecting lung diseases from X-ray images},
journal = {Informatics in Medicine Unlocked},
volume = {20},
pages = {100391},
year = {2020},
issn = {2352-9148},
doi = {https://doi.org/10.1016/j.imu.2020.100391},
url = {https://www.sciencedirect.com/science/article/pii/S2352914820300290},
author = {Subrato Bharati and Prajoy Podder and M. Rubaiyat Hossain Mondal},
keywords = {Capsule network, CNN, COVID-19, Vanilla NN, VDSNet, VGG},
abstract = {Lung disease is common throughout the world. These include chronic obstructive pulmonary disease, pneumonia, asthma, tuberculosis, fibrosis, etc. Timely diagnosis of lung disease is essential. Many image processing and machine learning models have been developed for this purpose. Different forms of existing deep learning techniques including convolutional neural network (CNN), vanilla neural network, visual geometry group based neural network (VGG), and capsule network are applied for lung disease prediction. The basic CNN has poor performance for rotated, tilted, or other abnormal image orientation. Therefore, we propose a new hybrid deep learning framework by combining VGG, data augmentation and spatial transformer network (STN) with CNN. This new hybrid method is termed here as VGG Data STN with CNN (VDSNet). As implementation tools, Jupyter Notebook, Tensorflow, and Keras are used. The new model is applied to NIH chest X-ray image dataset collected from Kaggle repository. Full and sample versions of the dataset are considered. For both full and sample datasets, VDSNet outperforms existing methods in terms of a number of metrics including precision, recall, F0.5 score and validation accuracy. For the case of full dataset, VDSNet exhibits a validation accuracy of 73%, while vanilla gray, vanilla RGB, hybrid CNN and VGG, and modified capsule network have accuracy values of 67.8%, 69%, 69.5% and 63.8%, respectively. When sample dataset rather than full dataset is used, VDSNet requires much lower training time at the expense of a slightly lower validation accuracy. Hence, the proposed VDSNet framework will simplify the detection of lung disease for experts as well as for doctors.}
}
```
