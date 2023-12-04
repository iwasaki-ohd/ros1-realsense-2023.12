#!/usr/bin/env python
# coding: UTF-8


import rospy
from sensor_msgs.msg import Image
import numpy as np

def depth_callback(depth_msg):
    # デプスメッセージをnumpy配列に変換
    depth_image = np.frombuffer(depth_msg.data, np.uint16).reshape((depth_msg.height, depth_msg.width))

    # デプスデータをfloat型に変換し、単位を[mm]に変換
    depth_data = depth_image.astype(float) * 0.001  # [mm]に変換

    # デプスデータの平均値を計算
    depth_average = np.mean(depth_data)

    # 平均デプスをターミナル上に表示
    rospy.loginfo("平均デプス: %.2f mm", depth_average)

def main():
    rospy.init_node('depth_subscriber', anonymous=True)
    rospy.Subscriber('depth_image', Image, depth_callback)
    rospy.spin()

if __name__ == '__main__':
    main()
