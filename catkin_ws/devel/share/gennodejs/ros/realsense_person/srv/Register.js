// Auto-generated. Do not edit!

// (in-package realsense_person.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RegisterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracking_id = null;
    }
    else {
      if (initObj.hasOwnProperty('tracking_id')) {
        this.tracking_id = initObj.tracking_id
      }
      else {
        this.tracking_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterRequest
    // Serialize message field [tracking_id]
    bufferOffset = _serializer.uint32(obj.tracking_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterRequest
    let len;
    let data = new RegisterRequest(null);
    // Deserialize message field [tracking_id]
    data.tracking_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/RegisterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '875d91ff3c7ddc8e592bd14c16203fbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 tracking_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterRequest(null);
    if (msg.tracking_id !== undefined) {
      resolved.tracking_id = msg.tracking_id;
    }
    else {
      resolved.tracking_id = 0
    }

    return resolved;
    }
};

class RegisterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.status_desc = null;
      this.recognition_id = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('status_desc')) {
        this.status_desc = initObj.status_desc
      }
      else {
        this.status_desc = '';
      }
      if (initObj.hasOwnProperty('recognition_id')) {
        this.recognition_id = initObj.recognition_id
      }
      else {
        this.recognition_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [status_desc]
    bufferOffset = _serializer.string(obj.status_desc, buffer, bufferOffset);
    // Serialize message field [recognition_id]
    bufferOffset = _serializer.int32(obj.recognition_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterResponse
    let len;
    let data = new RegisterResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_desc]
    data.status_desc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recognition_id]
    data.recognition_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_desc);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/RegisterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f94774817584f707da33dc72d1689aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string status_desc
    int32 recognition_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.status_desc !== undefined) {
      resolved.status_desc = msg.status_desc;
    }
    else {
      resolved.status_desc = ''
    }

    if (msg.recognition_id !== undefined) {
      resolved.recognition_id = msg.recognition_id;
    }
    else {
      resolved.recognition_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RegisterRequest,
  Response: RegisterResponse,
  md5sum() { return '4b79a7657f840c1ae74654d7047749a5'; },
  datatype() { return 'realsense_person/Register'; }
};
