cmake_minimum_required(VERSION 2.6.3)

project(tue_control_rtt_srvs)

find_package(catkin REQUIRED message_generation rtt_roscomm)

add_message_files(
    FILES
    JointControllerAction.msg
)

add_service_files(
    FILES
    ControllerManagerAction.srv
)

generate_messages()

ros_generate_rtt_typekit(tue_control_rtt_srvs)
ros_generate_rtt_service_proxies(tue_control_rtt_srvs)

orocos_generate_package(
    DEPENDS tue_control_rtt_srvs
    DEPENDS_TARGETS rtt_roscomm
)
