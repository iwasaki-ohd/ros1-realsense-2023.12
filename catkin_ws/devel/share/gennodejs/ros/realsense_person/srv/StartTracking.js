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

class StartTrackingRequest {
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
    // Serializes a message object of type StartTrackingRequest
    // Serialize message field [tracking_id]
    bufferOffset = _serializer.uint32(obj.tracking_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTrackingRequest
    let len;
    let data = new StartTrackingRequest(null);
    // Deserialize message field [tracking_id]
    data.tracking_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/StartTrackingRequest';
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
    const resolved = new StartTrackingRequest(null);
    if (msg.tracking_id !== undefined) {
      resolved.tracking_id = msg.tracking_id;
    }
    else {
      resolved.tracking_id = 0
    }

    return resolved;
    }
};

class StartTrackingResponse {
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
    // Serializes a message object of type StartTrackingResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [status_desc]
    bufferOffset = _serializer.string(obj.status_desc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTrackingResponse
    let len;
    let data = new StartTrackingResponse(null);
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
    return 'realsense_person/StartTrackingResponse';
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
    const resolved = new StartTrackingResponse(null);
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
  Request: StartTrackingRequest,
  Response: StartTrackingResponse,
  md5sum() { return '7687c97d5fb7aff1fb66700f7f14766e'; },
  datatype() { return 'realsense_person/StartTracking'; }
};
