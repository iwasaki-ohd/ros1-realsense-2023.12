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
let PersonFace = require('./PersonFace.js');
let PersonBody = require('./PersonBody.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PersonTracking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.person = null;
      this.person_face = null;
      this.person_body = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('person')) {
        this.person = initObj.person
      }
      else {
        this.person = new Person();
      }
      if (initObj.hasOwnProperty('person_face')) {
        this.person_face = initObj.person_face
      }
      else {
        this.person_face = new PersonFace();
      }
      if (initObj.hasOwnProperty('person_body')) {
        this.person_body = initObj.person_body
      }
      else {
        this.person_body = new PersonBody();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonTracking
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [person]
    bufferOffset = Person.serialize(obj.person, buffer, bufferOffset);
    // Serialize message field [person_face]
    bufferOffset = PersonFace.serialize(obj.person_face, buffer, bufferOffset);
    // Serialize message field [person_body]
    bufferOffset = PersonBody.serialize(obj.person_body, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonTracking
    let len;
    let data = new PersonTracking(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [person]
    data.person = Person.deserialize(buffer, bufferOffset);
    // Deserialize message field [person_face]
    data.person_face = PersonFace.deserialize(buffer, bufferOffset);
    // Deserialize message field [person_body]
    data.person_body = PersonBody.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Person.getMessageSize(object.person);
    length += PersonFace.getMessageSize(object.person_face);
    length += PersonBody.getMessageSize(object.person_body);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/PersonTracking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd4b605d2e359f7a66aec70c6f928898';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header 
    realsense_person/Person person
    realsense_person/PersonFace person_face
    realsense_person/PersonBody person_body
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
    
    ================================================================================
    MSG: realsense_person/PersonFace
    string orientation
    int32 orientation_confidence
    realsense_person/BoundingBox head_bounding_box
    geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw
    realsense_person/RegisteredPoint[] landmarks
    int32 landmarks_confidence
    
    ================================================================================
    MSG: realsense_person/PersonBody
    realsense_person/PersonSkeleton[] skeleton
    realsense_person/RegisteredPoint gesture_origin
    realsense_person/RegisteredPoint gesture_direction
    int32 gesture_confidence
    
    
    ================================================================================
    MSG: realsense_person/PersonSkeleton
    string joint_type
    realsense_person/RegisteredPoint skeleton_point
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonTracking(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.person !== undefined) {
      resolved.person = Person.Resolve(msg.person)
    }
    else {
      resolved.person = new Person()
    }

    if (msg.person_face !== undefined) {
      resolved.person_face = PersonFace.Resolve(msg.person_face)
    }
    else {
      resolved.person_face = new PersonFace()
    }

    if (msg.person_body !== undefined) {
      resolved.person_body = PersonBody.Resolve(msg.person_body)
    }
    else {
      resolved.person_body = new PersonBody()
    }

    return resolved;
    }
};

module.exports = PersonTracking;
