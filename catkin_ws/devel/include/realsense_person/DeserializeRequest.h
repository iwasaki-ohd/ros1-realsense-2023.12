// Generated by gencpp from file realsense_person/DeserializeRequest.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_DESERIALIZEREQUEST_H
#define REALSENSE_PERSON_MESSAGE_DESERIALIZEREQUEST_H


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
struct DeserializeRequest_
{
  typedef DeserializeRequest_<ContainerAllocator> Type;

  DeserializeRequest_()
    : data()  {
    }
  DeserializeRequest_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::realsense_person::DeserializeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_person::DeserializeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DeserializeRequest_

typedef ::realsense_person::DeserializeRequest_<std::allocator<void> > DeserializeRequest;

typedef boost::shared_ptr< ::realsense_person::DeserializeRequest > DeserializeRequestPtr;
typedef boost::shared_ptr< ::realsense_person::DeserializeRequest const> DeserializeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_person::DeserializeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_person::DeserializeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::realsense_person::DeserializeRequest_<ContainerAllocator1> & lhs, const ::realsense_person::DeserializeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::realsense_person::DeserializeRequest_<ContainerAllocator1> & lhs, const ::realsense_person::DeserializeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace realsense_person

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_person::DeserializeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::DeserializeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::DeserializeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f43a8e1b362b75baa741461b46adc7e0";
  }

  static const char* value(const ::realsense_person::DeserializeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf43a8e1b362b75baULL;
  static const uint64_t static_value2 = 0xa741461b46adc7e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_person/DeserializeRequest";
  }

  static const char* value(const ::realsense_person::DeserializeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] data\n"
;
  }

  static const char* value(const ::realsense_person::DeserializeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeserializeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_person::DeserializeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_person::DeserializeRequest_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_DESERIALIZEREQUEST_H
