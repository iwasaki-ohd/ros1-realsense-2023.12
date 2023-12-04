// Generated by gencpp from file realsense_person/BoundingBox.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_BOUNDINGBOX_H
#define REALSENSE_PERSON_MESSAGE_BOUNDINGBOX_H


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
struct BoundingBox_
{
  typedef BoundingBox_<ContainerAllocator> Type;

  BoundingBox_()
    : x(0)
    , y(0)
    , w(0)
    , h(0)
    , confidence(0)  {
    }
  BoundingBox_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)
    , w(0)
    , h(0)
    , confidence(0)  {
  (void)_alloc;
    }



   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;

   typedef int32_t _w_type;
  _w_type w;

   typedef int32_t _h_type;
  _h_type h;

   typedef int32_t _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::realsense_person::BoundingBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_person::BoundingBox_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBox_

typedef ::realsense_person::BoundingBox_<std::allocator<void> > BoundingBox;

typedef boost::shared_ptr< ::realsense_person::BoundingBox > BoundingBoxPtr;
typedef boost::shared_ptr< ::realsense_person::BoundingBox const> BoundingBoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_person::BoundingBox_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_person::BoundingBox_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::realsense_person::BoundingBox_<ContainerAllocator1> & lhs, const ::realsense_person::BoundingBox_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.w == rhs.w &&
    lhs.h == rhs.h &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::realsense_person::BoundingBox_<ContainerAllocator1> & lhs, const ::realsense_person::BoundingBox_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace realsense_person

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::realsense_person::BoundingBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_person::BoundingBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::BoundingBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_person::BoundingBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::BoundingBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_person::BoundingBox_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_person::BoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a4e91affcb4ac5719e71f56994988f12";
  }

  static const char* value(const ::realsense_person::BoundingBox_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa4e91affcb4ac571ULL;
  static const uint64_t static_value2 = 0x9e71f56994988f12ULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_person::BoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_person/BoundingBox";
  }

  static const char* value(const ::realsense_person::BoundingBox_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_person::BoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 x\n"
"int32 y\n"
"int32 w #width of the box\n"
"int32 h #height of the box\n"
"int32 confidence\n"
;
  }

  static const char* value(const ::realsense_person::BoundingBox_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_person::BoundingBox_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.w);
      stream.next(m.h);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBox_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_person::BoundingBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_person::BoundingBox_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "w: ";
    Printer<int32_t>::stream(s, indent + "  ", v.w);
    s << indent << "h: ";
    Printer<int32_t>::stream(s, indent + "  ", v.h);
    s << indent << "confidence: ";
    Printer<int32_t>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_BOUNDINGBOX_H