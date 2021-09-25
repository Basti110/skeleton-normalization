// Generated by gencpp from file comparing_system/user_state.msg
// DO NOT EDIT!


#ifndef COMPARING_SYSTEM_MESSAGE_USER_STATE_H
#define COMPARING_SYSTEM_MESSAGE_USER_STATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point32.h>

namespace comparing_system
{
template <class ContainerAllocator>
struct user_state_
{
  typedef user_state_<ContainerAllocator> Type;

  user_state_()
    : user_id(0)
    , current_exercise_name()
    , repetitions(0)
    , seconds_since_last_exercise_start(0)
    , milliseconds_since_last_repetition(0)
    , repetition_score(0)
    , exercise_score(0)
    , user_position()  {
    }
  user_state_(const ContainerAllocator& _alloc)
    : user_id(0)
    , current_exercise_name(_alloc)
    , repetitions(0)
    , seconds_since_last_exercise_start(0)
    , milliseconds_since_last_repetition(0)
    , repetition_score(0)
    , exercise_score(0)
    , user_position(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _user_id_type;
  _user_id_type user_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _current_exercise_name_type;
  _current_exercise_name_type current_exercise_name;

   typedef int16_t _repetitions_type;
  _repetitions_type repetitions;

   typedef int16_t _seconds_since_last_exercise_start_type;
  _seconds_since_last_exercise_start_type seconds_since_last_exercise_start;

   typedef int32_t _milliseconds_since_last_repetition_type;
  _milliseconds_since_last_repetition_type milliseconds_since_last_repetition;

   typedef int8_t _repetition_score_type;
  _repetition_score_type repetition_score;

   typedef int8_t _exercise_score_type;
  _exercise_score_type exercise_score;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _user_position_type;
  _user_position_type user_position;





  typedef boost::shared_ptr< ::comparing_system::user_state_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::comparing_system::user_state_<ContainerAllocator> const> ConstPtr;

}; // struct user_state_

typedef ::comparing_system::user_state_<std::allocator<void> > user_state;

typedef boost::shared_ptr< ::comparing_system::user_state > user_statePtr;
typedef boost::shared_ptr< ::comparing_system::user_state const> user_stateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::comparing_system::user_state_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::comparing_system::user_state_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::comparing_system::user_state_<ContainerAllocator1> & lhs, const ::comparing_system::user_state_<ContainerAllocator2> & rhs)
{
  return lhs.user_id == rhs.user_id &&
    lhs.current_exercise_name == rhs.current_exercise_name &&
    lhs.repetitions == rhs.repetitions &&
    lhs.seconds_since_last_exercise_start == rhs.seconds_since_last_exercise_start &&
    lhs.milliseconds_since_last_repetition == rhs.milliseconds_since_last_repetition &&
    lhs.repetition_score == rhs.repetition_score &&
    lhs.exercise_score == rhs.exercise_score &&
    lhs.user_position == rhs.user_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::comparing_system::user_state_<ContainerAllocator1> & lhs, const ::comparing_system::user_state_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace comparing_system

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::comparing_system::user_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::comparing_system::user_state_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::comparing_system::user_state_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::comparing_system::user_state_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::comparing_system::user_state_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::comparing_system::user_state_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::comparing_system::user_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0fabb7a9dd8f513916aacb089a33f4ba";
  }

  static const char* value(const ::comparing_system::user_state_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0fabb7a9dd8f5139ULL;
  static const uint64_t static_value2 = 0x16aacb089a33f4baULL;
};

template<class ContainerAllocator>
struct DataType< ::comparing_system::user_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "comparing_system/user_state";
  }

  static const char* value(const ::comparing_system::user_state_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::comparing_system::user_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describes user correction information\n"
"\n"
"# The following structure reflects the REST API between the Comparing System and the Smtartphone App \n"
"# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App\n"
"# For questions, refer to Artur\n"
"\n"
"\n"
"int16 user_id\n"
"string current_exercise_name\n"
"int16 repetitions\n"
"int16 seconds_since_last_exercise_start\n"
"int32 milliseconds_since_last_repetition\n"
"int8 repetition_score\n"
"int8 exercise_score\n"
"geometry_msgs/Point32 user_position\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::comparing_system::user_state_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::comparing_system::user_state_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.user_id);
      stream.next(m.current_exercise_name);
      stream.next(m.repetitions);
      stream.next(m.seconds_since_last_exercise_start);
      stream.next(m.milliseconds_since_last_repetition);
      stream.next(m.repetition_score);
      stream.next(m.exercise_score);
      stream.next(m.user_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct user_state_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::comparing_system::user_state_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::comparing_system::user_state_<ContainerAllocator>& v)
  {
    s << indent << "user_id: ";
    Printer<int16_t>::stream(s, indent + "  ", v.user_id);
    s << indent << "current_exercise_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.current_exercise_name);
    s << indent << "repetitions: ";
    Printer<int16_t>::stream(s, indent + "  ", v.repetitions);
    s << indent << "seconds_since_last_exercise_start: ";
    Printer<int16_t>::stream(s, indent + "  ", v.seconds_since_last_exercise_start);
    s << indent << "milliseconds_since_last_repetition: ";
    Printer<int32_t>::stream(s, indent + "  ", v.milliseconds_since_last_repetition);
    s << indent << "repetition_score: ";
    Printer<int8_t>::stream(s, indent + "  ", v.repetition_score);
    s << indent << "exercise_score: ";
    Printer<int8_t>::stream(s, indent + "  ", v.exercise_score);
    s << indent << "user_position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.user_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMPARING_SYSTEM_MESSAGE_USER_STATE_H