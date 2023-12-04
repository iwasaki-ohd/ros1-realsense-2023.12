// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Person = require('./Person.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PersonDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.detected_person_count = null;
      this.persons = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('detected_person_count')) {
        this.detected_person_count = initObj.detected_person_count
      }
      else {
        this.detected_person_count = 0;
      }
      if (initObj.hasOwnProperty('persons')) {
        this.persons = initObj.persons
      }
      else {
        this.persons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonDetection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [detected_person_count]
    bufferOffset = _serializer.uint32(obj.detected_person_count, buffer, bufferOffset);
    // Serialize message field [persons]
    // Serialize the length for message field [persons]
    bufferOffset = _serializer.uint32(obj.persons.length, buffer, bufferOffset);
    obj.persons.forEach((val) => {
      bufferOffset = Person.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonDetection
    let len;
    let data = new PersonDetection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_person_count]
    data.detected_person_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [persons]
    // Deserialize array length for message field [persons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.persons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.persons[i] = Person.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.persons.forEach((val) => {
      length += Person.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/PersonDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcb6ddad07788a68cae398b4b226fa64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 detected_person_count
    realsense_person/Person[] persons
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: realsense_person/Person
    realsense_person/PersonId person_id
    realsense_person/BoundingBox bounding_box
    realsense_person/RegisteredPoint center_of_mass
    ================================================================================
    MSG: realsense_person/PersonId
    uint32 tracking_id
    int32 recognition_id         #currently not populated.
    string recognition_name      #placeholder in case application associates a name to the recognition_id. 
    ================================================================================
    MSG: realsense_person/BoundingBox
    int32 x
    int32 y
    int32 w #width of the box
    int32 h #height of the box
    int32 confidence
    
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
    const resolved = new PersonDetection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.detected_person_count !== undefined) {
      resolved.detected_person_count = msg.detected_person_count;
    }
    else {
      resolved.detected_person_count = 0
    }

    if (msg.persons !== undefined) {
      resolved.persons = new Array(msg.persons.length);
      for (let i = 0; i < resolved.persons.length; ++i) {
        resolved.persons[i] = Person.Resolve(msg.persons[i]);
      }
    }
    else {
      resolved.persons = []
    }

    return resolved;
    }
};

module.exports = PersonDetection;
