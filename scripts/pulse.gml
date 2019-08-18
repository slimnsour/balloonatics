// Will return true if value changed to true on this frame
// False otherwise

pulse_prev = argument0
pulse_val = argument1

if (!pulse_prev and pulse_val) {
    return true;
} else {
    return false;
}
