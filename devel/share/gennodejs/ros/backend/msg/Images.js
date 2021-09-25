// Auto-generated. Do not edit!

// (in-package backend.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Images {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.img1 = null;
      this.img2 = null;
      this.img3 = null;
      this.img4 = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = 0;
      }
      if (initObj.hasOwnProperty('img1')) {
        this.img1 = initObj.img1
      }
      else {
        this.img1 = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('img2')) {
        this.img2 = initObj.img2
      }
      else {
        this.img2 = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('img3')) {
        this.img3 = initObj.img3
      }
      else {
        this.img3 = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('img4')) {
        this.img4 = initObj.img4
      }
      else {
        this.img4 = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Images
    // Serialize message field [number]
    bufferOffset = _serializer.int16(obj.number, buffer, bufferOffset);
    // Serialize message field [img1]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.img1, buffer, bufferOffset);
    // Serialize message field [img2]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.img2, buffer, bufferOffset);
    // Serialize message field [img3]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.img3, buffer, bufferOffset);
    // Serialize message field [img4]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.img4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Images
    let len;
    let data = new Images(null);
    // Deserialize message field [number]
    data.number = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [img1]
    data.img1 = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [img2]
    data.img2 = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [img3]
    data.img3 = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [img4]
    data.img4 = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.img1);
    length += sensor_msgs.msg.Image.getMessageSize(object.img2);
    length += sensor_msgs.msg.Image.getMessageSize(object.img3);
    length += sensor_msgs.msg.Image.getMessageSize(object.img4);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'backend/Images';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4083fda66ae96557bfd28f8a92b13da6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 number
    sensor_msgs/Image img1
    sensor_msgs/Image img2
    sensor_msgs/Image img3
    sensor_msgs/Image img4
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    const resolved = new Images(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = 0
    }

    if (msg.img1 !== undefined) {
      resolved.img1 = sensor_msgs.msg.Image.Resolve(msg.img1)
    }
    else {
      resolved.img1 = new sensor_msgs.msg.Image()
    }

    if (msg.img2 !== undefined) {
      resolved.img2 = sensor_msgs.msg.Image.Resolve(msg.img2)
    }
    else {
      resolved.img2 = new sensor_msgs.msg.Image()
    }

    if (msg.img3 !== undefined) {
      resolved.img3 = sensor_msgs.msg.Image.Resolve(msg.img3)
    }
    else {
      resolved.img3 = new sensor_msgs.msg.Image()
    }

    if (msg.img4 !== undefined) {
      resolved.img4 = sensor_msgs.msg.Image.Resolve(msg.img4)
    }
    else {
      resolved.img4 = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = Images;
