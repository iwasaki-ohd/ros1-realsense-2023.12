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

class StopTrackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopTrackingRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopTrackingRequest
    let len;
    let data = new StopTrackingRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/StopTrackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopTrackingRequest(null);
    return resolved;
    }
};

class StopTrackingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.status_desc = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopTrackingResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [status_desc]
    bufferOffset = _serializer.string(obj.status_desc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopTrackingResponse
    let len;
    let data = new StopTrackingResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_desc]
    data.status_desc = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_desc);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/StopTrackingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbfa2262d85d80c0b56ce4d61f4542fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string status_desc
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopTrackingResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: StopTrackingRequest,
  Response: StopTrackingResponse,
  md5sum() { return 'dbfa2262d85d80c0b56ce4d61f4542fd'; },
  datatype() { return 'realsense_person/StopTracking'; }
};
