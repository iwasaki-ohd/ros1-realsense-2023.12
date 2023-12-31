// Generated by gencpp from file motpy_ros/motpy_bboxRequest.msg
// DO NOT EDIT!


#ifndef MOTPY_ROS_MESSAGE_MOTPY_BBOXREQUEST_H
#define MOTPY_ROS_MESSAGE_MOTPY_BBOXREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <darknet_ros_msgs/BoundingBoxes.h>

namespace motpy_ros
{
template <class ContainerAllocator>
struct motpy_bboxRequest_
{
  typedef motpy_bboxRequest_<ContainerAllocator> Type;

  motpy_bboxRequest_()
    : input_bboxes()  {
    }
  motpy_bboxRequest_(const ContainerAllocator& _alloc)
    : input_bboxes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::darknet_ros_msgs::BoundingBoxes_<ContainerAllocator>  _input_bboxes_type;
  _input_bboxes_type input_bboxes;





  typedef boost::shared_ptr< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> const> ConstPtr;

}; // struct motpy_bboxRequest_

typedef ::motpy_ros::motpy_bboxRequest_<std::allocator<void> > motpy_bboxRequest;

typedef boost::shared_ptr< ::motpy_ros::motpy_bboxRequest > motpy_bboxRequestPtr;
typedef boost::shared_ptr< ::motpy_ros::motpy_bboxRequest const> motpy_bboxRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator1> & lhs, const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input_bboxes == rhs.input_bboxes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator1> & lhs, const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace motpy_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89c24386ecd269e72479b7994ea9d64b";
  }

  static const char* value(const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89c24386ecd269e7ULL;
  static const uint64_t static_value2 = 0x2479b7994ea9d64bULL;
};

template<class ContainerAllocator>
struct DataType< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motpy_ros/motpy_bboxRequest";
  }

  static const char* value(const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "darknet_ros_msgs/BoundingBoxes input_bboxes\n"
"\n"
"\n"
"================================================================================\n"
"MSG: darknet_ros_msgs/BoundingBoxes\n"
"Header header\n"
"Header image_header\n"
"BoundingBox[] bounding_boxes\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: darknet_ros_msgs/BoundingBox\n"
"float64 probability\n"
"int64 xmin\n"
"int64 ymin\n"
"int64 xmax\n"
"int64 ymax\n"
"int16 id\n"
"string Class\n"
;
  }

  static const char* value(const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input_bboxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motpy_bboxRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motpy_ros::motpy_bboxRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motpy_ros::motpy_bboxRequest_<ContainerAllocator>& v)
  {
    s << indent << "input_bboxes: ";
    s << std::endl;
    Printer< ::darknet_ros_msgs::BoundingBoxes_<ContainerAllocator> >::stream(s, indent + "  ", v.input_bboxes);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTPY_ROS_MESSAGE_MOTPY_BBOXREQUEST_H
