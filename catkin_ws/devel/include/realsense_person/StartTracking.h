// Generated by gencpp from file realsense_person/StartTracking.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_STARTTRACKING_H
#define REALSENSE_PERSON_MESSAGE_STARTTRACKING_H

#include <ros/service_traits.h>


#include <realsense_person/StartTrackingRequest.h>
#include <realsense_person/StartTrackingResponse.h>


namespace realsense_person
{

struct StartTracking
{

typedef StartTrackingRequest Request;
typedef StartTrackingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartTracking
} // namespace realsense_person


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::realsense_person::StartTracking > {
  static const char* value()
  {
    return "7687c97d5fb7aff1fb66700f7f14766e";
  }

  static const char* value(const ::realsense_person::StartTracking&) { return value(); }
};

template<>
struct DataType< ::realsense_person::StartTracking > {
  static const char* value()
  {
    return "realsense_person/StartTracking";
  }

  static const char* value(const ::realsense_person::StartTracking&) { return value(); }
};


// service_traits::MD5Sum< ::realsense_person::StartTrackingRequest> should match
// service_traits::MD5Sum< ::realsense_person::StartTracking >
template<>
struct MD5Sum< ::realsense_person::StartTrackingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::realsense_person::StartTracking >::value();
  }
  static const char* value(const ::realsense_person::StartTrackingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::realsense_person::StartTrackingRequest> should match
// service_traits::DataType< ::realsense_person::StartTracking >
template<>
struct DataType< ::realsense_person::StartTrackingRequest>
{
  static const char* value()
  {
    return DataType< ::realsense_person::StartTracking >::value();
  }
  static const char* value(const ::realsense_person::StartTrackingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::realsense_person::StartTrackingResponse> should match
// service_traits::MD5Sum< ::realsense_person::StartTracking >
template<>
struct MD5Sum< ::realsense_person::StartTrackingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::realsense_person::StartTracking >::value();
  }
  static const char* value(const ::realsense_person::StartTrackingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::realsense_person::StartTrackingResponse> should match
// service_traits::DataType< ::realsense_person::StartTracking >
template<>
struct DataType< ::realsense_person::StartTrackingResponse>
{
  static const char* value()
  {
    return DataType< ::realsense_person::StartTracking >::value();
  }
  static const char* value(const ::realsense_person::StartTrackingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_STARTTRACKING_H
