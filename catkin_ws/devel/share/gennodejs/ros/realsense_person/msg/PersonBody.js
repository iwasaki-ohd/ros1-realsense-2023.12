// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PersonSkeleton = require('./PersonSkeleton.js');
let RegisteredPoint = require('./RegisteredPoint.js');

//-----------------------------------------------------------

class PersonBody {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.skeleton = null;
      this.gesture_origin = null;
      this.gesture_direction = null;
      this.gesture_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('skeleton')) {
        this.skeleton = initObj.skeleton
      }
      else {
        this.skeleton = [];
      }
      if (initObj.hasOwnProperty('gesture_origin')) {
        this.gesture_origin = initObj.gesture_origin
      }
      else {
        this.gesture_origin = new RegisteredPoint();
      }
      if (initObj.hasOwnProperty('gesture_direction')) {
        this.gesture_direction = initObj.gesture_direction
      }
      else {
        this.gesture_direction = new RegisteredPoint();
      }
      if (initObj.hasOwnProperty('gesture_confidence')) {
        this.gesture_confidence = initObj.gesture_confidence
      }
      else {
        this.gesture_confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonBody
    // Serialize message field [skeleton]
    // Serialize the length for message field [skeleton]
    bufferOffset = _serializer.uint32(obj.skeleton.length, buffer, bufferOffset);
    obj.skeleton.forEach((val) => {
      bufferOffset = PersonSkeleton.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gesture_origin]
    bufferOffset = RegisteredPoint.serialize(obj.gesture_origin, buffer, bufferOffset);
    // Serialize message field [gesture_direction]
    bufferOffset = RegisteredPoint.serialize(obj.gesture_direction, buffer, bufferOffset);
    // Serialize message field [gesture_confidence]
    bufferOffset = _serializer.int32(obj.gesture_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonBody
    let len;
    let data = new PersonBody(null);
    // Deserialize message field [skeleton]
    // Deserialize array length for message field [skeleton]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.skeleton = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.skeleton[i] = PersonSkeleton.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gesture_origin]
    data.gesture_origin = RegisteredPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [gesture_direction]
    data.gesture_direction = RegisteredPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [gesture_confidence]
    data.gesture_confidence = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.skeleton.forEach((val) => {
      length += PersonSkeleton.getMessageSize(val);
    });
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/PersonBody';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9bfd5f8f67d8fbcfe06054caaec91ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    realsense_person/PersonSkeleton[] skeleton
    realsense_person/RegisteredPoint gesture_origin
    realsense_person/RegisteredPoint gesture_direction
    int32 gesture_confidence
    
    
    ================================================================================
    MSG: realsense_person/PersonSkeleton
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
    const resolved = new PersonBody(null);
    if (msg.skeleton !== undefined) {
      resolved.skeleton = new Array(msg.skeleton.length);
      for (let i = 0; i < resolved.skeleton.length; ++i) {
        resolved.skeleton[i] = PersonSkeleton.Resolve(msg.skeleton[i]);
      }
    }
    else {
      resolved.skeleton = []
    }

    if (msg.gesture_origin !== undefined) {
      resolved.gesture_origin = RegisteredPoint.Resolve(msg.gesture_origin)
    }
    else {
      resolved.gesture_origin = new RegisteredPoint()
    }

    if (msg.gesture_direction !== undefined) {
      resolved.gesture_direction = RegisteredPoint.Resolve(msg.gesture_direction)
    }
    else {
      resolved.gesture_direction = new RegisteredPoint()
    }

    if (msg.gesture_confidence !== undefined) {
      resolved.gesture_confidence = msg.gesture_confidence;
    }
    else {
      resolved.gesture_confidence = 0
    }

    return resolved;
    }
};

module.exports = PersonBody;
