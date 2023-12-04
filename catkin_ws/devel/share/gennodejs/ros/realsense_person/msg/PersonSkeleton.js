// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RegisteredPoint = require('./RegisteredPoint.js');

//-----------------------------------------------------------

class PersonSkeleton {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_type = null;
      this.skeleton_point = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_type')) {
        this.joint_type = initObj.joint_type
      }
      else {
        this.joint_type = '';
      }
      if (initObj.hasOwnProperty('skeleton_point')) {
        this.skeleton_point = initObj.skeleton_point
      }
      else {
        this.skeleton_point = new RegisteredPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonSkeleton
    // Serialize message field [joint_type]
    bufferOffset = _serializer.string(obj.joint_type, buffer, bufferOffset);
    // Serialize message field [skeleton_point]
    bufferOffset = RegisteredPoint.serialize(obj.skeleton_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonSkeleton
    let len;
    let data = new PersonSkeleton(null);
    // Deserialize message field [joint_type]
    data.joint_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [skeleton_point]
    data.skeleton_point = RegisteredPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint_type);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/PersonSkeleton';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '830cfdb700931a76a5884c7211cc3672';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_type
    realsense_person/RegisteredPoint skeleton_point
    
    
    ================================================================================
    MSG: realsense_person/RegisteredPoint
    geometry_msgs/Point world
    int32 world_confidence
    geometry_msgs/Point image
    int32 image_confidence
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonSkeleton(null);
    if (msg.joint_type !== undefined) {
      resolved.joint_type = msg.joint_type;
    }
    else {
      resolved.joint_type = ''
    }

    if (msg.skeleton_point !== undefined) {
      resolved.skeleton_point = RegisteredPoint.Resolve(msg.skeleton_point)
    }
    else {
      resolved.skeleton_point = new RegisteredPoint()
    }

    return resolved;
    }
};

module.exports = PersonSkeleton;
