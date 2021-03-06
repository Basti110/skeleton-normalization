# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from backend/Persons.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import backend.msg
import geometry_msgs.msg
import std_msgs.msg

class Persons(genpy.Message):
  _md5sum = "d5b944881aa3cb9c1850cb3389c83c1e"
  _type = "backend/Persons"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# The standard ROS message contains a header.
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
# resolution (e.g., `resolution` flag in the demo).
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
float32 z"""
  __slots__ = ['header','persons']
  _slot_types = ['std_msgs/Header','backend/Person[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,persons

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Persons, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.persons is None:
        self.persons = []
    else:
      self.header = std_msgs.msg.Header()
      self.persons = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.persons)
      buff.write(_struct_I.pack(length))
      for val1 in self.persons:
        _x = val1
        buff.write(_get_struct_2h().pack(_x.stationID, _x.sensorID))
        length = len(val1.bodyParts)
        buff.write(_struct_I.pack(length))
        for val2 in val1.bodyParts:
          _x = val2.score
          buff.write(_get_struct_f().pack(_x))
          _v1 = val2.pixel
          _x = _v1
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
          _v2 = val2.point
          _x = _v2
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.persons is None:
        self.persons = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.persons = []
      for i in range(0, length):
        val1 = backend.msg.Person()
        _x = val1
        start = end
        end += 4
        (_x.stationID, _x.sensorID,) = _get_struct_2h().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.bodyParts = []
        for i in range(0, length):
          val2 = backend.msg.Bodypart()
          start = end
          end += 4
          (val2.score,) = _get_struct_f().unpack(str[start:end])
          _v3 = val2.pixel
          _x = _v3
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          _v4 = val2.point
          _x = _v4
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          val1.bodyParts.append(val2)
        self.persons.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.persons)
      buff.write(_struct_I.pack(length))
      for val1 in self.persons:
        _x = val1
        buff.write(_get_struct_2h().pack(_x.stationID, _x.sensorID))
        length = len(val1.bodyParts)
        buff.write(_struct_I.pack(length))
        for val2 in val1.bodyParts:
          _x = val2.score
          buff.write(_get_struct_f().pack(_x))
          _v5 = val2.pixel
          _x = _v5
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
          _v6 = val2.point
          _x = _v6
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.persons is None:
        self.persons = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.persons = []
      for i in range(0, length):
        val1 = backend.msg.Person()
        _x = val1
        start = end
        end += 4
        (_x.stationID, _x.sensorID,) = _get_struct_2h().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.bodyParts = []
        for i in range(0, length):
          val2 = backend.msg.Bodypart()
          start = end
          end += 4
          (val2.score,) = _get_struct_f().unpack(str[start:end])
          _v7 = val2.pixel
          _x = _v7
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          _v8 = val2.point
          _x = _v8
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          val1.bodyParts.append(val2)
        self.persons.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_2h = None
def _get_struct_2h():
    global _struct_2h
    if _struct_2h is None:
        _struct_2h = struct.Struct("<2h")
    return _struct_2h
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
