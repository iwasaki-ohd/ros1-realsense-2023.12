// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RegisteredPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.world = null;
      this.world_confidence = null;
      this.image = null;
      this.image_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('world')) {
        this.world = initObj.world
      }
      else {
        this.world = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('world_confidence')) {
        this.world_confidence = initObj.world_confidence
      }
      else {
        this.world_confidence = 0;
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('image_confidence')) {
        this.image_confidence = initObj.image_confidence
      }
      else {
        this.image_confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisteredPoint
    // Serialize message field [world]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.world, buffer, bufferOffset);
    // Serialize message field [world_confidence]
    bufferOffset = _serializer.int32(obj.world_confidence, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [image_confidence]
    bufferOffset = _serializer.int32(obj.image_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisteredPoint
    let len;
    let data = new RegisteredPoint(null);
    // Deserialize message field [world]
    data.world = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [world_confidence]
    data.world_confidence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_confidence]
    data.image_confidence = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/RegisteredPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '377e1b201e51fdf9a771993c3be57884';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RegisteredPoint(null);
    if (msg.world !== undefined) {
      resolved.world = geometry_msgs.msg.Point.Resolve(msg.world)
    }
    else {
      resolved.world = new geometry_msgs.msg.Point()
    }

    if (msg.world_confidence !== undefined) {
      resolved.world_confidence = msg.world_confidence;
    }
    else {
      resolved.world_confidence = 0
    }

    if (msg.image !== undefined) {
      resolved.image = geometry_msgs.msg.Point.Resolve(msg.image)
    }
    else {
      resolved.image = new geometry_msgs.msg.Point()
    }

    if (msg.image_confidence !== undefined) {
      resolved.image_confidence = msg.image_confidence;
    }
    else {
      resolved.image_confidence = 0
    }

    return resolved;
    }
};

module.exports = RegisteredPoint;
