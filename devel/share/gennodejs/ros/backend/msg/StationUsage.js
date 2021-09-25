// Auto-generated. Do not edit!

// (in-package backend.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StationUsage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stationID = null;
      this.isActive = null;
      this.exerciseName = null;
    }
    else {
      if (initObj.hasOwnProperty('stationID')) {
        this.stationID = initObj.stationID
      }
      else {
        this.stationID = 0;
      }
      if (initObj.hasOwnProperty('isActive')) {
        this.isActive = initObj.isActive
      }
      else {
        this.isActive = false;
      }
      if (initObj.hasOwnProperty('exerciseName')) {
        this.exerciseName = initObj.exerciseName
      }
      else {
        this.exerciseName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationUsage
    // Serialize message field [stationID]
    bufferOffset = _serializer.int16(obj.stationID, buffer, bufferOffset);
    // Serialize message field [isActive]
    bufferOffset = _serializer.bool(obj.isActive, buffer, bufferOffset);
    // Serialize message field [exerciseName]
    bufferOffset = _serializer.string(obj.exerciseName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationUsage
    let len;
    let data = new StationUsage(null);
    // Deserialize message field [stationID]
    data.stationID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [isActive]
    data.isActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [exerciseName]
    data.exerciseName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.exerciseName);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'backend/StationUsage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12c2a61b83902c2403b1b7e3d5ed1714';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains information on the usage of a station and should be created upton receiving a message from a smartphone on that stateion
    # The state of a station is compromized of the following datafields
    
    int16 stationID
    bool isActive
    string exerciseName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationUsage(null);
    if (msg.stationID !== undefined) {
      resolved.stationID = msg.stationID;
    }
    else {
      resolved.stationID = 0
    }

    if (msg.isActive !== undefined) {
      resolved.isActive = msg.isActive;
    }
    else {
      resolved.isActive = false
    }

    if (msg.exerciseName !== undefined) {
      resolved.exerciseName = msg.exerciseName;
    }
    else {
      resolved.exerciseName = ''
    }

    return resolved;
    }
};

module.exports = StationUsage;
