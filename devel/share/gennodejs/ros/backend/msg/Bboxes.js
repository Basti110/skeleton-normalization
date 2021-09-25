// Auto-generated. Do not edit!

// (in-package backend.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Bboxes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.data = null;
      this.stationID = null;
      this.sensorID = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('stationID')) {
        this.stationID = initObj.stationID
      }
      else {
        this.stationID = [];
      }
      if (initObj.hasOwnProperty('sensorID')) {
        this.sensorID = initObj.sensorID
      }
      else {
        this.sensorID = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bboxes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    // Serialize message field [stationID]
    bufferOffset = _arraySerializer.int16(obj.stationID, buffer, bufferOffset, null);
    // Serialize message field [sensorID]
    bufferOffset = _arraySerializer.int16(obj.sensorID, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bboxes
    let len;
    let data = new Bboxes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [stationID]
    data.stationID = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [sensorID]
    data.sensorID = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.data.length;
    length += 2 * object.stationID.length;
    length += 2 * object.sensorID.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'backend/Bboxes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '475569134d54a5f2a487b7d6d6daa81c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32[] data
    int16[] stationID
    int16[] sensorID
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bboxes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.stationID !== undefined) {
      resolved.stationID = msg.stationID;
    }
    else {
      resolved.stationID = []
    }

    if (msg.sensorID !== undefined) {
      resolved.sensorID = msg.sensorID;
    }
    else {
      resolved.sensorID = []
    }

    return resolved;
    }
};

module.exports = Bboxes;
