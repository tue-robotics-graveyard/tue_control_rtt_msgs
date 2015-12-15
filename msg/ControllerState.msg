# Controller inputs
float32 measurement
float32 ref_position
float32 ref_velocity
float32 ref_acceleration

# Controller output
float32 output

# Homed or not
bool is_homed

# Controller status
uint8 status       # As defined in tue_control/include/tue/control/supervised_controller.h
