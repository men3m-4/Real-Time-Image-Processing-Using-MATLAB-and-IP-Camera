# Real-Time Object Detection Using MATLAB and IP Camera

## 📌 Project Overview
This project demonstrates real-time object detection using **MATLAB** in conjunction with an **IP Camera**. It captures live video, processes each frame, detects objects, removes noise, and visualizes the results by drawing bounding boxes around the detected objects.


---

## 🎯 Objective
To detect and highlight objects in real-time video streams using MATLAB and an IP camera.

---

## 🛠️ Key Technologies
- MATLAB
- Image Segmenter Toolbox
- IP Camera Integration

---

## 🔧 System Components
- **IP Camera:** Provides live video stream over a network.
- **MATLAB:** Used for frame capture, image processing, object detection, and real-time display.

---

## 📷 Capturing Video from IP Camera
MATLAB code snippet to connect and stream from an IP camera:

```matlab
mycam = ipcam('http://192.168.1.101:8080/video');
