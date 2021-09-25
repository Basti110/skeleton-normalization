// Auto-generated. Do not edit!

// (in-package backend.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Person = require('./Person.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Persons {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.persons = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('persons')) {
        this.persons = initObj.persons
      }
      else {
        this.persons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Persons
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [persons]
    // Serialize the length for message field [persons]
    bufferOffset = _serializer.uint32(obj.persons.length, buffer, bufferOffset);
    obj.persons.forEach((val) => {
      bufferOffset = Person.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Persons
    let len;
    let data = new Persons(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [persons]
    // Deserialize array length for message field [persons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.persons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.persons[i] = Person.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.persons.forEach((val) => {
      length += Person.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'backend/Persons';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5b944881aa3cb9c1850cb3389c83c1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The standard ROS message contains a header.
    # There can be multiple people in a frame.
    # Hence we created an array of a person.
    # We should name this array as people.
    # However, for me, while coding persons
    # make much more sense as it resembles
    # the data structure array.
    Header header
    Person[] persons 
    
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
    MSG: backend/Person
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
    const resolved = new Persons(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.persons !== undefined) {
      resolved.persons = new Array(msg.persons.length);
      for (let i = 0; i < resolved.persons.length; ++i) {
        resolved.persons[i] = Person.Resolve(msg.persons[i]);
      }
    }
    else {
      resolved.persons = []
    }

    return resolved;
    }
};

module.exports = Persons;
