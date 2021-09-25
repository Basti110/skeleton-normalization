// Auto-generated. Do not edit!

// (in-package comparing_system.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class user_correction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user_id = null;
      this.repetition = null;
      this.positive_correction = null;
      this.display_text = null;
    }
    else {
      if (initObj.hasOwnProperty('user_id')) {
        this.user_id = initObj.user_id
      }
      else {
        this.user_id = 0;
      }
      if (initObj.hasOwnProperty('repetition')) {
        this.repetition = initObj.repetition
      }
      else {
        this.repetition = 0;
      }
      if (initObj.hasOwnProperty('positive_correction')) {
        this.positive_correction = initObj.positive_correction
      }
      else {
        this.positive_correction = false;
      }
      if (initObj.hasOwnProperty('display_text')) {
        this.display_text = initObj.display_text
      }
      else {
        this.display_text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_correction
    // Serialize message field [user_id]
    bufferOffset = _serializer.int16(obj.user_id, buffer, bufferOffset);
    // Serialize message field [repetition]
    bufferOffset = _serializer.int16(obj.repetition, buffer, bufferOffset);
    // Serialize message field [positive_correction]
    bufferOffset = _serializer.bool(obj.positive_correction, buffer, bufferOffset);
    // Serialize message field [display_text]
    bufferOffset = _serializer.string(obj.display_text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_correction
    let len;
    let data = new user_correction(null);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [repetition]
    data.repetition = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [positive_correction]
    data.positive_correction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [display_text]
    data.display_text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.display_text);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'comparing_system/user_correction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5faadefefb5d277a82a27faf3f41371';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes user correction information
    
    # The following structure reflects the REST API between the Comparing System and the Smtartphone App 
    # as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App
    # For questions, refer to Artur
    
    
    int16 user_id
    int16 repetition
    bool positive_correction
    string display_text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_correction(null);
    if (msg.user_id !== undefined) {
      resolved.user_id = msg.user_id;
    }
    else {
      resolved.user_id = 0
    }

    if (msg.repetition !== undefined) {
      resolved.repetition = msg.repetition;
    }
    else {
      resolved.repetition = 0
    }

    if (msg.positive_correction !== undefined) {
      resolved.positive_correction = msg.positive_correction;
    }
    else {
      resolved.positive_correction = false
    }

    if (msg.display_text !== undefined) {
      resolved.display_text = msg.display_text;
    }
    else {
      resolved.display_text = ''
    }

    return resolved;
    }
};

module.exports = user_correction;
