// Generated by gencpp from file realsense_person/RegisterRequest.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_REGISTERREQUEST_H
#define REALSENSE_PERSON_MESSAGE_REGISTERREQUEST_H


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
struct RegisterRequest_
{
  typedef RegisterRequest_<ContainerAllocator> Type;

  RegisterRequest_()
    : tracking_id(0)  {
    }
  RegisterRequest_(const ContainerAllocator& _alloc)
    : tracking_id(0)  {
  (void)_alloc;
    }



   typedef uint32_t _tracking_id_type;
  _tracking_id_type tracking_id;





  typedef boost::shared_ptr< ::realsense_person::RegisterRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_person::RegisterRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RegisterRequest_

typedef ::realsense_person::RegisterRequest_<std::allocator<void> > RegisterRequest;

typedef boost::shared_ptr< ::realsense_person::RegisterRequest > RegisterRequestPtr;
typedef boost::shared_ptr< ::realsense_person::RegisterRequest const> RegisterRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_person::RegisterRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_person::RegisterRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::realsense_person::RegisterRequest_<ContainerAllocator1> & lhs, const ::realsense_person::RegisterRequest_<ContainerAllocator2> & rhs)
{
  return lhs.tracking_id == rhs.tracking_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::realsense_person::RegisterRequest_<ContainerAllocator1> & lhs, const ::realsense_person::RegisterRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace realsense_person

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::realsense_person::RegisterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_person::RegisterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::RegisterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::RegisterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::RegisterRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::RegisterRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_person::RegisterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "875d91ff3c7ddc8e592bd14c16203fbe";
  }

  static const char* value(const ::realsense_person::RegisterRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x875d91ff3c7ddc8eULL;
  static const uint64_t static_value2 = 0x592bd14c16203fbeULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_person::RegisterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_person/RegisterRequest";
  }

  static const char* value(const ::realsense_person::RegisterRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_person::RegisterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 tracking_id\n"
;
  }

  static const char* value(const ::realsense_person::RegisterRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_person::RegisterRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tracking_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RegisterRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_person::RegisterRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_person::RegisterRequest_<ContainerAllocator>& v)
  {
    s << indent << "tracking_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.tracking_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_REGISTERREQUEST_H
