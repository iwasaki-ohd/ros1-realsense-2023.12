# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from realsense_person/PersonDetection.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import realsense_person.msg
import std_msgs.msg

class PersonDetection(genpy.Message):
  _md5sum = "fcb6ddad07788a68cae398b4b226fa64"
  _type = "realsense_person/PersonDetection"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
uint32 detected_person_count
realsense_person/Person[] persons
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
MSG: realsense_person/Person
realsense_person/PersonId person_id
realsense_person/BoundingBox bounding_box
realsense_person/RegisteredPoint center_of_mass
================================================================================
MSG: realsense_person/PersonId
uint32 tracking_id
int32 recognition_id         #currently not populated.
string recognition_name      #placeholder in case application associates a name to the recognition_id. 
================================================================================
MSG: realsense_person/BoundingBox
int32 x
int32 y
int32 w #width of the box
int32 h #height of the box
int32 confidence

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
  __slots__ = ['header','detected_person_count','persons']
  _slot_types = ['std_msgs/Header','uint32','realsense_person/Person[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,detected_person_count,persons

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PersonDetection, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.detected_person_count is None:
        self.detected_person_count = 0
      if self.persons is None:
        self.persons = []
    else:
      self.header = std_msgs.msg.Header()
      self.detected_person_count = 0
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
      _x = self.detected_person_count
      buff.write(_get_struct_I().pack(_x))
      length = len(self.persons)
      buff.write(_struct_I.pack(length))
      for val1 in self.persons:
        _v1 = val1.person_id
        _x = _v1
        buff.write(_get_struct_Ii().pack(_x.tracking_id, _x.recognition_id))
        _x = _v1.recognition_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v2 = val1.bounding_box
        _x = _v2
        buff.write(_get_struct_5i().pack(_x.x, _x.y, _x.w, _x.h, _x.confidence))
        _v3 = val1.center_of_mass
        _v4 = _v3.world
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v3.world_confidence
        buff.write(_get_struct_i().pack(_x))
        _v5 = _v3.image
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v3.image_confidence
        buff.write(_get_struct_i().pack(_x))
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
      (self.detected_person_count,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.persons = []
      for i in range(0, length):
        val1 = realsense_person.msg.Person()
        _v6 = val1.person_id
        _x = _v6
        start = end
        end += 8
        (_x.tracking_id, _x.recognition_id,) = _get_struct_Ii().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v6.recognition_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v6.recognition_name = str[start:end]
        _v7 = val1.bounding_box
        _x = _v7
        start = end
        end += 20
        (_x.x, _x.y, _x.w, _x.h, _x.confidence,) = _get_struct_5i().unpack(str[start:end])
        _v8 = val1.center_of_mass
        _v9 = _v8.world
        _x = _v9
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v8.world_confidence,) = _get_struct_i().unpack(str[start:end])
        _v10 = _v8.image
        _x = _v10
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v8.image_confidence,) = _get_struct_i().unpack(str[start:end])
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
      _x = self.detected_person_count
      buff.write(_get_struct_I().pack(_x))
      length = len(self.persons)
      buff.write(_struct_I.pack(length))
      for val1 in self.persons:
        _v11 = val1.person_id
        _x = _v11
        buff.write(_get_struct_Ii().pack(_x.tracking_id, _x.recognition_id))
        _x = _v11.recognition_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v12 = val1.bounding_box
        _x = _v12
        buff.write(_get_struct_5i().pack(_x.x, _x.y, _x.w, _x.h, _x.confidence))
        _v13 = val1.center_of_mass
        _v14 = _v13.world
        _x = _v14
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v13.world_confidence
        buff.write(_get_struct_i().pack(_x))
        _v15 = _v13.image
        _x = _v15
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v13.image_confidence
        buff.write(_get_struct_i().pack(_x))
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
      (self.detected_person_count,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.persons = []
      for i in range(0, length):
        val1 = realsense_person.msg.Person()
        _v16 = val1.person_id
        _x = _v16
        start = end
        end += 8
        (_x.tracking_id, _x.recognition_id,) = _get_struct_Ii().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.recognition_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v16.recognition_name = str[start:end]
        _v17 = val1.bounding_box
        _x = _v17
        start = end
        end += 20
        (_x.x, _x.y, _x.w, _x.h, _x.confidence,) = _get_struct_5i().unpack(str[start:end])
        _v18 = val1.center_of_mass
        _v19 = _v18.world
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v18.world_confidence,) = _get_struct_i().unpack(str[start:end])
        _v20 = _v18.image
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (_v18.image_confidence,) = _get_struct_i().unpack(str[start:end])
        self.persons.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_5i = None
def _get_struct_5i():
    global _struct_5i
    if _struct_5i is None:
        _struct_5i = struct.Struct("<5i")
    return _struct_5i
_struct_Ii = None
def _get_struct_Ii():
    global _struct_Ii
    if _struct_Ii is None:
        _struct_Ii = struct.Struct("<Ii")
    return _struct_Ii
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i