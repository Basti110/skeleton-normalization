// Auto-generated. Do not edit!

// (in-package comparing_system.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class user_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user_id = null;
      this.current_exercise_name = null;
      this.repetitions = null;
      this.seconds_since_last_exercise_start = null;
      this.milliseconds_since_last_repetition = null;
      this.repetition_score = null;
      this.exercise_score = null;
      this.user_position = null;
    }
    else {
      if (initObj.hasOwnProperty('user_id')) {
        this.user_id = initObj.user_id
      }
      else {
        this.user_id = 0;
      }
      if (initObj.hasOwnProperty('current_exercise_name')) {
        this.current_exercise_name = initObj.current_exercise_name
      }
      else {
        this.current_exercise_name = '';
      }
      if (initObj.hasOwnProperty('repetitions')) {
        this.repetitions = initObj.repetitions
      }
      else {
        this.repetitions = 0;
      }
      if (initObj.hasOwnProperty('seconds_since_last_exercise_start')) {
        this.seconds_since_last_exercise_start = initObj.seconds_since_last_exercise_start
      }
      else {
        this.seconds_since_last_exercise_start = 0;
      }
      if (initObj.hasOwnProperty('milliseconds_since_last_repetition')) {
        this.milliseconds_since_last_repetition = initObj.milliseconds_since_last_repetition
      }
      else {
        this.milliseconds_since_last_repetition = 0;
      }
      if (initObj.hasOwnProperty('repetition_score')) {
        this.repetition_score = initObj.repetition_score
      }
      else {
        this.repetition_score = 0;
      }
      if (initObj.hasOwnProperty('exercise_score')) {
        this.exercise_score = initObj.exercise_score
      }
      else {
        this.exercise_score = 0;
      }
      if (initObj.hasOwnProperty('user_position')) {
        this.user_position = initObj.user_position
      }
      else {
        this.user_position = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_state
    // Serialize message field [user_id]
    bufferOffset = _serializer.int16(obj.user_id, buffer, bufferOffset);
    // Serialize message field [current_exercise_name]
    bufferOffset = _serializer.string(obj.current_exercise_name, buffer, bufferOffset);
    // Serialize message field [repetitions]
    bufferOffset = _serializer.int16(obj.repetitions, buffer, bufferOffset);
    // Serialize message field [seconds_since_last_exercise_start]
    bufferOffset = _serializer.int16(obj.seconds_since_last_exercise_start, buffer, bufferOffset);
    // Serialize message field [milliseconds_since_last_repetition]
    bufferOffset = _serializer.int32(obj.milliseconds_since_last_repetition, buffer, bufferOffset);
    // Serialize message field [repetition_score]
    bufferOffset = _serializer.int8(obj.repetition_score, buffer, bufferOffset);
    // Serialize message field [exercise_score]
    bufferOffset = _serializer.int8(obj.exercise_score, buffer, bufferOffset);
    // Serialize message field [user_position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.user_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_state
    let len;
    let data = new user_state(null);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [current_exercise_name]
    data.current_exercise_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [repetitions]
    data.repetitions = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [seconds_since_last_exercise_start]
    data.seconds_since_last_exercise_start = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [milliseconds_since_last_repetition]
    data.milliseconds_since_last_repetition = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [repetition_score]
    data.repetition_score = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [exercise_score]
    data.exercise_score = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [user_position]
    data.user_position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_exercise_name);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'comparing_system/user_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fabb7a9dd8f513916aacb089a33f4ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes user correction information
    
    # The following structure reflects the REST API between the Comparing System and the Smtartphone App 
    # as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App
    # For questions, refer to Artur
    
    
    int16 user_id
    string current_exercise_name
    int16 repetitions
    int16 seconds_since_last_exercise_start
    int32 milliseconds_since_last_repetition
    int8 repetition_score
    int8 exercise_score
    geometry_msgs/Point32 user_position
    
    
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
    const resolved = new user_state(null);
    if (msg.user_id !== undefined) {
      resolved.user_id = msg.user_id;
    }
    else {
      resolved.user_id = 0
    }

    if (msg.current_exercise_name !== undefined) {
      resolved.current_exercise_name = msg.current_exercise_name;
    }
    else {
      resolved.current_exercise_name = ''
    }

    if (msg.repetitions !== undefined) {
      resolved.repetitions = msg.repetitions;
    }
    else {
      resolved.repetitions = 0
    }

    if (msg.seconds_since_last_exercise_start !== undefined) {
      resolved.seconds_since_last_exercise_start = msg.seconds_since_last_exercise_start;
    }
    else {
      resolved.seconds_since_last_exercise_start = 0
    }

    if (msg.milliseconds_since_last_repetition !== undefined) {
      resolved.milliseconds_since_last_repetition = msg.milliseconds_since_last_repetition;
    }
    else {
      resolved.milliseconds_since_last_repetition = 0
    }

    if (msg.repetition_score !== undefined) {
      resolved.repetition_score = msg.repetition_score;
    }
    else {
      resolved.repetition_score = 0
    }

    if (msg.exercise_score !== undefined) {
      resolved.exercise_score = msg.exercise_score;
    }
    else {
      resolved.exercise_score = 0
    }

    if (msg.user_position !== undefined) {
      resolved.user_position = geometry_msgs.msg.Point32.Resolve(msg.user_position)
    }
    else {
      resolved.user_position = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = user_state;
