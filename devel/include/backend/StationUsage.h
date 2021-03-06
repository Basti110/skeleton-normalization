// Generated by gencpp from file backend/StationUsage.msg
// DO NOT EDIT!


#ifndef BACKEND_MESSAGE_STATIONUSAGE_H
#define BACKEND_MESSAGE_STATIONUSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace backend
{
template <class ContainerAllocator>
struct StationUsage_
{
  typedef StationUsage_<ContainerAllocator> Type;

  StationUsage_()
    : stationID(0)
    , isActive(false)
    , exerciseName()  {
    }
  StationUsage_(const ContainerAllocator& _alloc)
    : stationID(0)
    , isActive(false)
    , exerciseName(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _stationID_type;
  _stationID_type stationID;

   typedef uint8_t _isActive_type;
  _isActive_type isActive;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _exerciseName_type;
  _exerciseName_type exerciseName;





  typedef boost::shared_ptr< ::backend::StationUsage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::backend::StationUsage_<ContainerAllocator> const> ConstPtr;

}; // struct StationUsage_

typedef ::backend::StationUsage_<std::allocator<void> > StationUsage;

typedef boost::shared_ptr< ::backend::StationUsage > StationUsagePtr;
typedef boost::shared_ptr< ::backend::StationUsage const> StationUsageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::backend::StationUsage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::backend::StationUsage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::backend::StationUsage_<ContainerAllocator1> & lhs, const ::backend::StationUsage_<ContainerAllocator2> & rhs)
{
  return lhs.stationID == rhs.stationID &&
    lhs.isActive == rhs.isActive &&
    lhs.exerciseName == rhs.exerciseName;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::backend::StationUsage_<ContainerAllocator1> & lhs, const ::backend::StationUsage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace backend

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::backend::StationUsage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::backend::StationUsage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::backend::StationUsage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::backend::StationUsage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::backend::StationUsage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::backend::StationUsage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::backend::StationUsage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "12c2a61b83902c2403b1b7e3d5ed1714";
  }

  static const char* value(const ::backend::StationUsage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x12c2a61b83902c24ULL;
  static const uint64_t static_value2 = 0x03b1b7e3d5ed1714ULL;
};

template<class ContainerAllocator>
struct DataType< ::backend::StationUsage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "backend/StationUsage";
  }

  static const char* value(const ::backend::StationUsage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::backend::StationUsage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains information on the usage of a station and should be created upton receiving a message from a smartphone on that stateion\n"
"# The state of a station is compromized of the following datafields\n"
"\n"
"int16 stationID\n"
"bool isActive\n"
"string exerciseName\n"
;
  }

  static const char* value(const ::backend::StationUsage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::backend::StationUsage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stationID);
      stream.next(m.isActive);
      stream.next(m.exerciseName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StationUsage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::backend::StationUsage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::backend::StationUsage_<ContainerAllocator>& v)
  {
    s << indent << "stationID: ";
    Printer<int16_t>::stream(s, indent + "  ", v.stationID);
    s << indent << "isActive: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isActive);
    s << indent << "exerciseName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.exerciseName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BACKEND_MESSAGE_STATIONUSAGE_H
