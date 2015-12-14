cmake_minimum_required(VERSION 2.6.3)

project(tue_control_rtt_msgs)

find_package(catkin REQUIRED message_generation rtt_roscomm)

add_message_files(
    FILES
    JointControllerAction.msg
    ControllerManagerAction.msg
    ControllerState.msg
    ControllerStates.msg
)

generate_messages()

ros_generate_rtt_typekit(tue_control_rtt_msgs)

orocos_generate_package(
    DEPENDS tue_control_rtt_msgs
    DEPENDS_TARGETS rtt_roscomm
)
