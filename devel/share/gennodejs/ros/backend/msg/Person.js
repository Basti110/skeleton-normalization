// Auto-generated. Do not edit!

// (in-package backend.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Bodypart = require('./Bodypart.js');

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stationID = null;
      this.sensorID = null;
      this.bodyParts = null;
    }
    else {
      if (initObj.hasOwnProperty('stationID')) {
        this.stationID = initObj.stationID
      }
      else {
        this.stationID = 0;
      }
      if (initObj.hasOwnProperty('sensorID')) {
        this.sensorID = initObj.sensorID
      }
      else {
        this.sensorID = 0;
      }
      if (initObj.hasOwnProperty('bodyParts')) {
        this.bodyParts = initObj.bodyParts
      }
      else {
        this.bodyParts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [stationID]
    bufferOffset = _serializer.int16(obj.stationID, buffer, bufferOffset);
    // Serialize message field [sensorID]
    bufferOffset = _serializer.int16(obj.sensorID, buffer, bufferOffset);
    // Serialize message field [bodyParts]
    // Serialize the length for message field [bodyParts]
    bufferOffset = _serializer.uint32(obj.bodyParts.length, buffer, bufferOffset);
    obj.bodyParts.forEach((val) => {
      bufferOffset = Bodypart.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [stationID]
    data.stationID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sensorID]
    data.sensorID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bodyParts]
    // Deserialize array length for message field [bodyParts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bodyParts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bodyParts[i] = Bodypart.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.bodyParts.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'backend/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19e387ec9518ddfc7ac4967934ce1516';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A person has some body parts. That is why we have created
    # an array of body parts.
    int16 stationID
    int16 sensorID
    Bodypart[] bodyParts 
    
    ================================================================================
    MSG: backend/Bodypart
    # The location and score of body parts are stored in a float array.
    # Therefore we are using 32 bits instead of 64 bits.
    # src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp
    float32 score
    Pixel pixel
    geometry_msgs/Point32 point 
    
    ================================================================================
    MSG: backend/Pixel
    # The location and score of body parts are stored in a float array.
    # Therefore we are using 32 bits instead of 64 bits.
    # src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp
    # The location has been resized to the desired output
    # resolution (e.g.,  flag in the demo).
    float32 x
    float32 y 
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person(null);
    if (msg.stationID !== undefined) {
      resolved.stationID = msg.stationID;
    }
    else {
      resolved.stationID = 0
    }

    if (msg.sensorID !== undefined) {
      resolved.sensorID = msg.sensorID;
    }
    else {
      resolved.sensorID = 0
    }

    if (msg.bodyParts !== undefined) {
      resolved.bodyParts = new Array(msg.bodyParts.length);
      for (let i = 0; i < resolved.bodyParts.length; ++i) {
        resolved.bodyParts[i] = Bodypart.Resolve(msg.bodyParts[i]);
      }
    }
    else {
      resolved.bodyParts = []
    }

    return resolved;
    }
};

module.exports = Person;
