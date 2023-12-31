// Generated by gencpp from file realsense_person/GetTrackingIdResponse.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_GETTRACKINGIDRESPONSE_H
#define REALSENSE_PERSON_MESSAGE_GETTRACKINGIDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace realsense_person
{
template <class ContainerAllocator>
struct GetTrackingIdResponse_
{
  typedef GetTrackingIdResponse_<ContainerAllocator> Type;

  GetTrackingIdResponse_()
    : status(0)
    , status_desc()
    , detected_person_count(0)
    , tracking_ids()  {
    }
  GetTrackingIdResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , status_desc(_alloc)
    , detected_person_count(0)
    , tracking_ids(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _status_desc_type;
  _status_desc_type status_desc;

   typedef uint32_t _detected_person_count_type;
  _detected_person_count_type detected_person_count;

   typedef std::vector<uint32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint32_t>> _tracking_ids_type;
  _tracking_ids_type tracking_ids;





  typedef boost::shared_ptr< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetTrackingIdResponse_

typedef ::realsense_person::GetTrackingIdResponse_<std::allocator<void> > GetTrackingIdResponse;

typedef boost::shared_ptr< ::realsense_person::GetTrackingIdResponse > GetTrackingIdResponsePtr;
typedef boost::shared_ptr< ::realsense_person::GetTrackingIdResponse const> GetTrackingIdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator1> & lhs, const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.status_desc == rhs.status_desc &&
    lhs.detected_person_count == rhs.detected_person_count &&
    lhs.tracking_ids == rhs.tracking_ids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator1> & lhs, const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace realsense_person

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "20a696d550f9aee4109fc97b5b8cd0b7";
  }

  static const char* value(const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x20a696d550f9aee4ULL;
  static const uint64_t static_value2 = 0x109fc97b5b8cd0b7ULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_person/GetTrackingIdResponse";
  }

  static const char* value(const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n"
"string status_desc\n"
"uint32 detected_person_count\n"
"uint32[] tracking_ids #list of tracking_ids of detected people\n"
"\n"
"\n"
;
  }

  static const char* value(const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.status_desc);
      stream.next(m.detected_person_count);
      stream.next(m.tracking_ids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTrackingIdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_person::GetTrackingIdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_person::GetTrackingIdResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "status_desc: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.status_desc);
    s << indent << "detected_person_count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.detected_person_count);
    s << indent << "tracking_ids[]" << std::endl;
    for (size_t i = 0; i < v.tracking_ids.size(); ++i)
    {
      s << indent << "  tracking_ids[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.tracking_ids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_GETTRACKINGIDRESPONSE_H
