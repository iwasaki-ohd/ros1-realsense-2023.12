// Auto-generated. Do not edit!

// (in-package realsense_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PersonId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracking_id = null;
      this.recognition_id = null;
      this.recognition_name = null;
    }
    else {
      if (initObj.hasOwnProperty('tracking_id')) {
        this.tracking_id = initObj.tracking_id
      }
      else {
        this.tracking_id = 0;
      }
      if (initObj.hasOwnProperty('recognition_id')) {
        this.recognition_id = initObj.recognition_id
      }
      else {
        this.recognition_id = 0;
      }
      if (initObj.hasOwnProperty('recognition_name')) {
        this.recognition_name = initObj.recognition_name
      }
      else {
        this.recognition_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonId
    // Serialize message field [tracking_id]
    bufferOffset = _serializer.uint32(obj.tracking_id, buffer, bufferOffset);
    // Serialize message field [recognition_id]
    bufferOffset = _serializer.int32(obj.recognition_id, buffer, bufferOffset);
    // Serialize message field [recognition_name]
    bufferOffset = _serializer.string(obj.recognition_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonId
    let len;
    let data = new PersonId(null);
    // Deserialize message field [tracking_id]
    data.tracking_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [recognition_id]
    data.recognition_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [recognition_name]
    data.recognition_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.recognition_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_person/PersonId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5eb5b111f0e9bfed7be82e0b5f5a69a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 tracking_id
    int32 recognition_id         #currently not populated.
    string recognition_name      #placeholder in case application associates a name to the recognition_id. 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonId(null);
    if (msg.tracking_id !== undefined) {
      resolved.tracking_id = msg.tracking_id;
    }
    else {
      resolved.tracking_id = 0
    }

    if (msg.recognition_id !== undefined) {
      resolved.recognition_id = msg.recognition_id;
    }
    else {
      resolved.recognition_id = 0
    }

    if (msg.recognition_name !== undefined) {
      resolved.recognition_name = msg.recognition_name;
    }
    else {
      resolved.recognition_name = ''
    }

    return resolved;
    }
};

module.exports = PersonId;
