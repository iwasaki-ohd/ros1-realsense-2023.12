#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

# 距離のコールバック関数を定義
def distance_callback(distance):
    avg_distance = distance.data
    print("Personの距離: {:.2f} メートル".format(avg_distance))

# ROSノードを初期化
rospy.init_node('distance_subscriber')

# Personの距離をサブスクライブ
rospy.Subscriber('/person_distance', Float32, distance_callback)

# ROSの処理を開始
rospy.spin()
