// Generated by gencpp from file backend/Pixel.msg
// DO NOT EDIT!


#ifndef BACKEND_MESSAGE_PIXEL_H
#define BACKEND_MESSAGE_PIXEL_H


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
struct Pixel_
{
  typedef Pixel_<ContainerAllocator> Type;

  Pixel_()
    : x(0.0)
    , y(0.0)  {
    }
  Pixel_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::backend::Pixel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::backend::Pixel_<ContainerAllocator> const> ConstPtr;

}; // struct Pixel_

typedef ::backend::Pixel_<std::allocator<void> > Pixel;

typedef boost::shared_ptr< ::backend::Pixel > PixelPtr;
typedef boost::shared_ptr< ::backend::Pixel const> PixelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::backend::Pixel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::backend::Pixel_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::backend::Pixel_<ContainerAllocator1> & lhs, const ::backend::Pixel_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::backend::Pixel_<ContainerAllocator1> & lhs, const ::backend::Pixel_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace backend

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::backend::Pixel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::backend::Pixel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::backend::Pixel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::backend::Pixel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::backend::Pixel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::backend::Pixel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::backend::Pixel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const ::backend::Pixel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff8d7d66dd3e4b73ULL;
  static const uint64_t static_value2 = 0x1ef14a45d38888b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::backend::Pixel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "backend/Pixel";
  }

  static const char* value(const ::backend::Pixel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::backend::Pixel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The location and score of body parts are stored in a float array.\n"
"# Therefore we are using 32 bits instead of 64 bits.\n"
"# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp\n"
"# The location has been resized to the desired output\n"
"# resolution (e.g., `resolution` flag in the demo).\n"
"float32 x\n"
"float32 y \n"
;
  }

  static const char* value(const ::backend::Pixel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::backend::Pixel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pixel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::backend::Pixel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::backend::Pixel_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BACKEND_MESSAGE_PIXEL_H
