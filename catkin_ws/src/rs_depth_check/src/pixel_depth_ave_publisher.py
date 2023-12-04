#!/usr/bin/env python
# coding: UTF-8


import rospy
from sensor_msgs.msg import Image
from std_msgs.msg import Header
import pyrealsense2 as rs
import numpy as np


def main():
    rospy.init_node('depth_publisher', anonymous=True)
    pub = rospy.Publisher('depth_image', Image, queue_size=10)
    rate = rospy.Rate(1)  # パブリッシュする頻度を1Hzに設定

    # RealSenseパイプラインの設定
    # カメラの起動も行っている
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)  # デプスストリームを有効化

    pipeline.start(config)  # ストリーミングを開始

    while not rospy.is_shutdown():
        frames = pipeline.wait_for_frames()
        depth_frame = frames.get_depth_frame()
        if depth_frame:
            # デプスフレームをnumpy配列に変換
            depth_image = np.asanyarray(depth_frame.get_data())

            # ROSメッセージのヘッダーを作成
            header = Header(stamp=rospy.Time.now())

            # デプスデータを持つImageメッセージを作成
            depth_msg = Image(
                header=header,
                height=depth_image.shape[0],
                width=depth_image.shape[1],
                encoding='16UC1',
                data=depth_image.tostring()
            )

            # デプスイメージをパブリッシュ
            pub.publish(depth_msg)

            rate.sleep()  # 指定したパブリッシュ頻度を保つためにスリープ

    pipeline.stop()  # ストリーミングを停止

if __name__ == '__main__':
    main()
