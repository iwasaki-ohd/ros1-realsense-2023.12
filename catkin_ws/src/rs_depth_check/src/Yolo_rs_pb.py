#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np
import darknet

# YOLOの検出器を初期化
net = darknet.load_net(b"yolo/yolov3.cfg", b"yolo/yolov3.weights", 0)
meta = darknet.load_meta(b"yolo/coco.data")

# ROSノードを初期化
rospy.init_node('object_detection')

# ROSパブリッシャーを初期化
depth_pub = rospy.Publisher('/depth_info', Image, queue_size=1)

# OpenCVのブリッジを初期化
bridge = CvBridge()

# カラーイメージのコールバック関数を定義
def image_callback(color_image):
    # カラーイメージをOpenCV形式に変換
    cv_image = bridge.imgmsg_to_cv2(color_image, "bgr8")

    # YOLOを使用して物体を検出
    detections = darknet.detect(net, meta, cv_image)

    # 検出された物体に対して処理を実行
    for detection in detections:
        class_name = detection[0].decode('utf-8')
        if class_name == 'person':
            x, y, w, h = detection[2]
            depth_roi = cv_image[int(y):int(y+h), int(x):int(x+w)]  # "person"のバウンディングボックス内の深度領域を切り出す
            depth = np.mean(depth_roi)  # バウンディングボックス内の画素の深度の平均値を計算

            # デプス情報をパブリッシュ
            depth_msg = bridge.cv2_to_imgmsg(depth_roi, encoding="passthrough")
            depth_pub.publish(depth_msg)

# カラーイメージのトピックにサブスクライブ
rospy.Subscriber('/camera/color/image_raw', Image, image_callback)

# ROSの処理を開始
rospy.spin()
