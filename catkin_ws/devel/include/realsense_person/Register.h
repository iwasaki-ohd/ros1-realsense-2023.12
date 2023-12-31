// Generated by gencpp from file realsense_person/Register.msg
// DO NOT EDIT!


#ifndef REALSENSE_PERSON_MESSAGE_REGISTER_H
#define REALSENSE_PERSON_MESSAGE_REGISTER_H

#include <ros/service_traits.h>


#include <realsense_person/RegisterRequest.h>
#include <realsense_person/RegisterResponse.h>


namespace realsense_person
{

struct Register
{

typedef RegisterRequest Request;
typedef RegisterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Register
} // namespace realsense_person


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::realsense_person::Register > {
  static const char* value()
  {
    return "4b79a7657f840c1ae74654d7047749a5";
  }

  static const char* value(const ::realsense_person::Register&) { return value(); }
};

template<>
struct DataType< ::realsense_person::Register > {
  static const char* value()
  {
    return "realsense_person/Register";
  }

  static const char* value(const ::realsense_person::Register&) { return value(); }
};


// service_traits::MD5Sum< ::realsense_person::RegisterRequest> should match
// service_traits::MD5Sum< ::realsense_person::Register >
template<>
struct MD5Sum< ::realsense_person::RegisterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::realsense_person::Register >::value();
  }
  static const char* value(const ::realsense_person::RegisterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::realsense_person::RegisterRequest> should match
// service_traits::DataType< ::realsense_person::Register >
template<>
struct DataType< ::realsense_person::RegisterRequest>
{
  static const char* value()
  {
    return DataType< ::realsense_person::Register >::value();
  }
  static const char* value(const ::realsense_person::RegisterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::realsense_person::RegisterResponse> should match
// service_traits::MD5Sum< ::realsense_person::Register >
template<>
struct MD5Sum< ::realsense_person::RegisterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::realsense_person::Register >::value();
  }
  static const char* value(const ::realsense_person::RegisterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::realsense_person::RegisterResponse> should match
// service_traits::DataType< ::realsense_person::Register >
template<>
struct DataType< ::realsense_person::RegisterResponse>
{
  static const char* value()
  {
    return DataType< ::realsense_person::Register >::value();
  }
  static const char* value(const ::realsense_person::RegisterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // REALSENSE_PERSON_MESSAGE_REGISTER_H
