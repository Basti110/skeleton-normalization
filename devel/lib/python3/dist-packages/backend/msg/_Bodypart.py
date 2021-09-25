# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from backend/Bodypart.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import backend.msg
import geometry_msgs.msg

class Bodypart(genpy.Message):
  _md5sum = "243edb92e04d1e621047e9d565b8e64f"
  _type = "backend/Bodypart"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# The location and score of body parts are stored in a float array.
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
  __slots__ = ['score','pixel','point']
  _slot_types = ['float32','backend/Pixel','geometry_msgs/Point32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       score,pixel,point

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Bodypart, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.score is None:
        self.score = 0.
      if self.pixel is None:
        self.pixel = backend.msg.Pixel()
      if self.point is None:
        self.point = geometry_msgs.msg.Point32()
    else:
      self.score = 0.
      self.pixel = backend.msg.Pixel()
      self.point = geometry_msgs.msg.Point32()

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
      buff.write(_get_struct_6f().pack(_x.score, _x.pixel.x, _x.pixel.y, _x.point.x, _x.point.y, _x.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pixel is None:
        self.pixel = backend.msg.Pixel()
      if self.point is None:
        self.point = geometry_msgs.msg.Point32()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.score, _x.pixel.x, _x.pixel.y, _x.point.x, _x.point.y, _x.point.z,) = _get_struct_6f().unpack(str[start:end])
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
      buff.write(_get_struct_6f().pack(_x.score, _x.pixel.x, _x.pixel.y, _x.point.x, _x.point.y, _x.point.z))
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
      if self.pixel is None:
        self.pixel = backend.msg.Pixel()
      if self.point is None:
        self.point = geometry_msgs.msg.Point32()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.score, _x.pixel.x, _x.pixel.y, _x.point.x, _x.point.y, _x.point.z,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f