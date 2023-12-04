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

class GetTrackingIdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrackingIdRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrackingIdRequest
    let len;
    let data = new GetTrackingIdRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/GetTrackingIdRequest';
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
    const resolved = new GetTrackingIdRequest(null);
    return resolved;
    }
};

class GetTrackingIdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.status_desc = null;
      this.detected_person_count = null;
      this.tracking_ids = null;
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
      if (initObj.hasOwnProperty('detected_person_count')) {
        this.detected_person_count = initObj.detected_person_count
      }
      else {
        this.detected_person_count = 0;
      }
      if (initObj.hasOwnProperty('tracking_ids')) {
        this.tracking_ids = initObj.tracking_ids
      }
      else {
        this.tracking_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrackingIdResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [status_desc]
    bufferOffset = _serializer.string(obj.status_desc, buffer, bufferOffset);
    // Serialize message field [detected_person_count]
    bufferOffset = _serializer.uint32(obj.detected_person_count, buffer, bufferOffset);
    // Serialize message field [tracking_ids]
    bufferOffset = _arraySerializer.uint32(obj.tracking_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrackingIdResponse
    let len;
    let data = new GetTrackingIdResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_desc]
    data.status_desc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detected_person_count]
    data.detected_person_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tracking_ids]
    data.tracking_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_desc);
    length += 4 * object.tracking_ids.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_person/GetTrackingIdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20a696d550f9aee4109fc97b5b8cd0b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string status_desc
    uint32 detected_person_count
    uint32[] tracking_ids #list of tracking_ids of detected people
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTrackingIdResponse(null);
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

    if (msg.detected_person_count !== undefined) {
      resolved.detected_person_count = msg.detected_person_count;
    }
    else {
      resolved.detected_person_count = 0
    }

    if (msg.tracking_ids !== undefined) {
      resolved.tracking_ids = msg.tracking_ids;
    }
    else {
      resolved.tracking_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTrackingIdRequest,
  Response: GetTrackingIdResponse,
  md5sum() { return '20a696d550f9aee4109fc97b5b8cd0b7'; },
  datatype() { return 'realsense_person/GetTrackingId'; }
};
