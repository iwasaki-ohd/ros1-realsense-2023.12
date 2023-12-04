#!/usr/bin/env python
# coding: UTF-8

import rospy
from std_msgs.msg import Float32
import pyrealsense2 as rs


def publish_depth_data():
    # Realsenseカメラの初期化
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)
    pipeline.start(config)

    # ROSパブリッシャーノードの初期化
    rospy.init_node('depth_publisher', anonymous=True)
    pub = rospy.Publisher('depth_data', Float32, queue_size=10)

    # メインループ
    rate = rospy.Rate(30)  # パブリッシュする周波数を設定
    while not rospy.is_shutdown():
        # フレームの取得
        frames = pipeline.wait_for_frames()
        depth_frame = frames.get_depth_frame()

        # 深度データの抽出
        depth_data = depth_frame.get_distance(320, 240)  # 中央のピクセルの深度を取得

        # データのパブリッシュ
        pub.publish(depth_data)

        rate.sleep()

    # パイプラインの停止
    pipeline.stop()

if __name__ == '__main__':
    try:
        publish_depth_data()
    except rospy.ROSInterruptException:
        pass
