// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox = require('./BoundingBox.js');
let RegisteredPoint = require('./RegisteredPoint.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PersonFace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orientation = null;
      this.orientation_confidence = null;
      this.head_bounding_box = null;
      this.head_pose = null;
      this.landmarks = null;
      this.landmarks_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = '';
      }
      if (initObj.hasOwnProperty('orientation_confidence')) {
        this.orientation_confidence = initObj.orientation_confidence
      }
      else {
        this.orientation_confidence = 0;
      }
      if (initObj.hasOwnProperty('head_bounding_box')) {
        this.head_bounding_box = initObj.head_bounding_box
      }
      else {
        this.head_bounding_box = new BoundingBox();
      }
      if (initObj.hasOwnProperty('head_pose')) {
        this.head_pose = initObj.head_pose
      }
      else {
        this.head_pose = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('landmarks')) {
        this.landmarks = initObj.landmarks
      }
      else {
        this.landmarks = [];
      }
      if (initObj.hasOwnProperty('landmarks_confidence')) {
        this.landmarks_confidence = initObj.landmarks_confidence
      }
      else {
        this.landmarks_confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonFace
    // Serialize message field [orientation]
    bufferOffset = _serializer.string(obj.orientation, buffer, bufferOffset);
    // Serialize message field [orientation_confidence]
    bufferOffset = _serializer.int32(obj.orientation_confidence, buffer, bufferOffset);
    // Serialize message field [head_bounding_box]
    bufferOffset = BoundingBox.serialize(obj.head_bounding_box, buffer, bufferOffset);
    // Serialize message field [head_pose]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.head_pose, buffer, bufferOffset);
    // Serialize message field [landmarks]
    // Serialize the length for message field [landmarks]
    bufferOffset = _serializer.uint32(obj.landmarks.length, buffer, bufferOffset);
    obj.landmarks.forEach((val) => {
      bufferOffset = RegisteredPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [landmarks_confidence]
    bufferOffset = _serializer.int32(obj.landmarks_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonFace
    let len;
    let data = new PersonFace(null);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [orientation_confidence]
    data.orientation_confidence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [head_bounding_box]
    data.head_bounding_box = BoundingBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_pose]
    data.head_pose = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmarks]
    // Deserialize array length for message field [landmarks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks[i] = RegisteredPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [landmarks_confidence]
    data.landmarks_confidence = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.orientation);
    length += 56 * object.landmarks.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/PersonFace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a9e6d7f59e4f091518a51ac905c4d3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string orientation
    int32 orientation_confidence
    realsense_person/BoundingBox head_bounding_box
    geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw
    realsense_person/RegisteredPoint[] landmarks
    int32 landmarks_confidence
    
    ================================================================================
    MSG: realsense_person/BoundingBox
    int32 x
    int32 y
    int32 w #width of the box
    int32 h #height of the box
    int32 confidence
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: realsense_person/RegisteredPoint
    geometry_msgs/Point world
    int32 world_confidence
    geometry_msgs/Point image
    int32 image_confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonFace(null);
    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = ''
    }

    if (msg.orientation_confidence !== undefined) {
      resolved.orientation_confidence = msg.orientation_confidence;
    }
    else {
      resolved.orientation_confidence = 0
    }

    if (msg.head_bounding_box !== undefined) {
      resolved.head_bounding_box = BoundingBox.Resolve(msg.head_bounding_box)
    }
    else {
      resolved.head_bounding_box = new BoundingBox()
    }

    if (msg.head_pose !== undefined) {
      resolved.head_pose = geometry_msgs.msg.Point.Resolve(msg.head_pose)
    }
    else {
      resolved.head_pose = new geometry_msgs.msg.Point()
    }

    if (msg.landmarks !== undefined) {
      resolved.landmarks = new Array(msg.landmarks.length);
      for (let i = 0; i < resolved.landmarks.length; ++i) {
        resolved.landmarks[i] = RegisteredPoint.Resolve(msg.landmarks[i]);
      }
    }
    else {
      resolved.landmarks = []
    }

    if (msg.landmarks_confidence !== undefined) {
      resolved.landmarks_confidence = msg.landmarks_confidence;
    }
    else {
      resolved.landmarks_confidence = 0
    }

    return resolved;
    }
};

module.exports = PersonFace;
