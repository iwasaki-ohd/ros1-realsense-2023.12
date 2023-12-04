// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PersonId = require('./PersonId.js');
let BoundingBox = require('./BoundingBox.js');
let RegisteredPoint = require('./RegisteredPoint.js');

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.person_id = null;
      this.bounding_box = null;
      this.center_of_mass = null;
    }
    else {
      if (initObj.hasOwnProperty('person_id')) {
        this.person_id = initObj.person_id
      }
      else {
        this.person_id = new PersonId();
      }
      if (initObj.hasOwnProperty('bounding_box')) {
        this.bounding_box = initObj.bounding_box
      }
      else {
        this.bounding_box = new BoundingBox();
      }
      if (initObj.hasOwnProperty('center_of_mass')) {
        this.center_of_mass = initObj.center_of_mass
      }
      else {
        this.center_of_mass = new RegisteredPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [person_id]
    bufferOffset = PersonId.serialize(obj.person_id, buffer, bufferOffset);
    // Serialize message field [bounding_box]
    bufferOffset = BoundingBox.serialize(obj.bounding_box, buffer, bufferOffset);
    // Serialize message field [center_of_mass]
    bufferOffset = RegisteredPoint.serialize(obj.center_of_mass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [person_id]
    data.person_id = PersonId.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box]
    data.bounding_box = BoundingBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_of_mass]
    data.center_of_mass = RegisteredPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PersonId.getMessageSize(object.person_id);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6933144e4378998756b146a1cd151c9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Person(null);
    if (msg.person_id !== undefined) {
      resolved.person_id = PersonId.Resolve(msg.person_id)
    }
    else {
      resolved.person_id = new PersonId()
    }

    if (msg.bounding_box !== undefined) {
      resolved.bounding_box = BoundingBox.Resolve(msg.bounding_box)
    }
    else {
      resolved.bounding_box = new BoundingBox()
    }

    if (msg.center_of_mass !== undefined) {
      resolved.center_of_mass = RegisteredPoint.Resolve(msg.center_of_mass)
    }
    else {
      resolved.center_of_mass = new RegisteredPoint()
    }

    return resolved;
    }
};

module.exports = Person;
