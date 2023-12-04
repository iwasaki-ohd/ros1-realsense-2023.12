#!/usr/bin/env python
# coding: UTF-8

import rospy
from std_msgs.msg import Float32


data_list = []
data_count = 0

def depth_callback(data):
    global data_list, data_count
    depth_data = data.data
    data_list.append(depth_data)
    data_count += 1

def calculate_average():
    global data_list, data_count
    rospy.init_node('depth_subscriber', anonymous=True)
    rospy.Subscriber('depth_data', Float32, depth_callback)

    rate = rospy.Rate(30)  # サブスクライブする周波数を設定
    while not rospy.is_shutdown():
        if data_count > 0:
            average = sum(data_list) / data_count
            print("Average depth:", average)
            data_list = []  # データリストをリセット
            data_count = 0  # データカウントをリセット

        rate.sleep()

if __name__ == '__main__':
    try:
        calculate_average()
    except rospy.ROSInterruptException:
        pass

