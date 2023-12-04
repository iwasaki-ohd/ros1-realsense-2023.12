# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from realsense_person/PersonBody.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import realsense_person.msg

class PersonBody(genpy.Message):
  _md5sum = "a9bfd5f8f67d8fbcfe06054caaec91ff"
  _type = "realsense_person/PersonBody"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """realsense_person/PersonSkeleton[] skeleton
realsense_person/RegisteredPoint gesture_origin
realsense_person/RegisteredPoint gesture_direction
int32 gesture_confidence


================================================================================
MSG: realsense_person/PersonSkeleton
string joint_type
realsense_person/RegisteredPoint skeleton_point


================================================================================
MSG: realsense_person/RegisteredPoint
geometry_msgs/Point world
int32 world_confidence
geometry_msgs/Point image
int32 image_confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['skeleton','gesture_origin','gesture_direction','gesture_confidence']
  _slot_types = ['realsense_person/PersonSkeleton[]','realsense_person/RegisteredPoint','realsense_person/RegisteredPoint','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       skeleton,gesture_origin,gesture_direction,gesture_confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PersonBody, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.skeleton is None:
        self.skeleton = []
      if self.gesture_origin is None:
        self.gesture_origin = realsense_person.msg.RegisteredPoint()
      if self.gesture_direction is None:
        self.gesture_direction = realsense_person.msg.RegisteredPoint()
      if self.gesture_confidence is None:
        self.gesture_confidence = 0
    else:
      self.skeleton = []
      self.gesture_origin = realsense_person.msg.RegisteredPoint()
      self.gesture_direction = realsense_person.msg.RegisteredPoint()
      self.gesture_confidence = 0

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
      length = len(self.skeleton)
      buff.write(_struct_I.pack(length))
      for val1 in self.skeleton:
        _x = val1.joint_type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v1 = val1.skeleton_point
        _v2 = _v1.world
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v1.world_confidence
        buff.write(_get_struct_i().pack(_x))
        _v3 = _v1.image
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v1.image_confidence
        buff.write(_get_struct_i().pack(_x))
      _x = self
      buff.write(_get_struct_3di3di3di3d2i().pack(_x.gesture_origin.world.x, _x.gesture_origin.world.y, _x.gesture_origin.world.z, _x.gesture_origin.world_confidence, _x.gesture_origin.image.x, _x.gesture_origin.image.y, _x.gesture_origin.image.z, _x.gesture_origin.image_confidence, _x.gesture_direction.world.x, _x.gesture_direction.world.y, _x.gesture_direction.world.z, _x.gesture_direction.world_confidence, _x.gesture_direction.image.x, _x.gesture_direction.image.y, _x.gesture_direction.image.z, _x.gesture_direction.image_confidence, _x.gesture_confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.skeleton is None:
        self.skeleton = None
      if self.gesture_origin is None:
        self.gesture_origin = realsense_person.msg.RegisteredPoint()
      if self.gesture_direction is None:
        self.gesture_direction = realsense_person.msg.RegisteredPoint()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.skeleton = []
      for i in range(0, length):
        val1 = realsense_person.msg.PersonSkeleton()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.joint_type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.joint_type = str[start:end]
        _v4 = val1.skeleton_point
        _v5 = _v4.world
        _x = _v5
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v4.world_confidence,) = _get_struct_i().unpack(str[start:end])
        _v6 = _v4.image
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v4.image_confidence,) = _get_struct_i().unpack(str[start:end])
        self.skeleton.append(val1)
      _x = self
      start = end
      end += 116
      (_x.gesture_origin.world.x, _x.gesture_origin.world.y, _x.gesture_origin.world.z, _x.gesture_origin.world_confidence, _x.gesture_origin.image.x, _x.gesture_origin.image.y, _x.gesture_origin.image.z, _x.gesture_origin.image_confidence, _x.gesture_direction.world.x, _x.gesture_direction.world.y, _x.gesture_direction.world.z, _x.gesture_direction.world_confidence, _x.gesture_direction.image.x, _x.gesture_direction.image.y, _x.gesture_direction.image.z, _x.gesture_direction.image_confidence, _x.gesture_confidence,) = _get_struct_3di3di3di3d2i().unpack(str[start:end])
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
      length = len(self.skeleton)
      buff.write(_struct_I.pack(length))
      for val1 in self.skeleton:
        _x = val1.joint_type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v7 = val1.skeleton_point
        _v8 = _v7.world
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v7.world_confidence
        buff.write(_get_struct_i().pack(_x))
        _v9 = _v7.image
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v7.image_confidence
        buff.write(_get_struct_i().pack(_x))
      _x = self
      buff.write(_get_struct_3di3di3di3d2i().pack(_x.gesture_origin.world.x, _x.gesture_origin.world.y, _x.gesture_origin.world.z, _x.gesture_origin.world_confidence, _x.gesture_origin.image.x, _x.gesture_origin.image.y, _x.gesture_origin.image.z, _x.gesture_origin.image_confidence, _x.gesture_direction.world.x, _x.gesture_direction.world.y, _x.gesture_direction.world.z, _x.gesture_direction.world_confidence, _x.gesture_direction.image.x, _x.gesture_direction.image.y, _x.gesture_direction.image.z, _x.gesture_direction.image_confidence, _x.gesture_confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.skeleton is None:
        self.skeleton = None
      if self.gesture_origin is None:
        self.gesture_origin = realsense_person.msg.RegisteredPoint()
      if self.gesture_direction is None:
        self.gesture_direction = realsense_person.msg.RegisteredPoint()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.skeleton = []
      for i in range(0, length):
        val1 = realsense_person.msg.PersonSkeleton()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.joint_type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.joint_type = str[start:end]
        _v10 = val1.skeleton_point
        _v11 = _v10.world
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v10.world_confidence,) = _get_struct_i().unpack(str[start:end])
        _v12 = _v10.image
        _x = _v12
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v10.image_confidence,) = _get_struct_i().unpack(str[start:end])
        self.skeleton.append(val1)
      _x = self
      start = end
      end += 116
      (_x.gesture_origin.world.x, _x.gesture_origin.world.y, _x.gesture_origin.world.z, _x.gesture_origin.world_confidence, _x.gesture_origin.image.x, _x.gesture_origin.image.y, _x.gesture_origin.image.z, _x.gesture_origin.image_confidence, _x.gesture_direction.world.x, _x.gesture_direction.world.y, _x.gesture_direction.world.z, _x.gesture_direction.world_confidence, _x.gesture_direction.image.x, _x.gesture_direction.image.y, _x.gesture_direction.image.z, _x.gesture_direction.image_confidence, _x.gesture_confidence,) = _get_struct_3di3di3di3d2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3di3di3di3d2i = None
def _get_struct_3di3di3di3d2i():
    global _struct_3di3di3di3d2i
    if _struct_3di3di3di3d2i is None:
        _struct_3di3di3di3d2i = struct.Struct("<3di3di3di3d2i")
    return _struct_3di3di3di3d2i
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
