// Generated by gencpp from file realsense_person/RegisterResponse.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_REGISTERRESPONSE_H
#define REALSENSE_PERSON_MESSAGE_REGISTERRESPONSE_H


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
struct RegisterResponse_
{
  typedef RegisterResponse_<ContainerAllocator> Type;

  RegisterResponse_()
    : status(0)
    , status_desc()
    , recognition_id(0)  {
    }
  RegisterResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , status_desc(_alloc)
    , recognition_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _status_desc_type;
  _status_desc_type status_desc;

   typedef int32_t _recognition_id_type;
  _recognition_id_type recognition_id;





  typedef boost::shared_ptr< ::realsense_person::RegisterResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_person::RegisterResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RegisterResponse_

typedef ::realsense_person::RegisterResponse_<std::allocator<void> > RegisterResponse;

typedef boost::shared_ptr< ::realsense_person::RegisterResponse > RegisterResponsePtr;
typedef boost::shared_ptr< ::realsense_person::RegisterResponse const> RegisterResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_person::RegisterResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_person::RegisterResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::realsense_person::RegisterResponse_<ContainerAllocator1> & lhs, const ::realsense_person::RegisterResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.status_desc == rhs.status_desc &&
    lhs.recognition_id == rhs.recognition_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::realsense_person::RegisterResponse_<ContainerAllocator1> & lhs, const ::realsense_person::RegisterResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace realsense_person

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::realsense_person::RegisterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_person::RegisterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::RegisterResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::RegisterResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::RegisterResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::RegisterResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_person::RegisterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f94774817584f707da33dc72d1689aa";
  }

  static const char* value(const ::realsense_person::RegisterResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f94774817584f70ULL;
  static const uint64_t static_value2 = 0x7da33dc72d1689aaULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_person::RegisterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_person/RegisterResponse";
  }

  static const char* value(const ::realsense_person::RegisterResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_person::RegisterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n"
"string status_desc\n"
"int32 recognition_id\n"
"\n"
;
  }

  static const char* value(const ::realsense_person::RegisterResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_person::RegisterResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.status_desc);
      stream.next(m.recognition_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RegisterResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_person::RegisterResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_person::RegisterResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "status_desc: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.status_desc);
    s << indent << "recognition_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.recognition_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_REGISTERRESPONSE_H