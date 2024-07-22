# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name lower_leds \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lower_leds \
    op interface \
    ports { lower_leds { O 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name upper_leds \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_upper_leds \
    op interface \
    ports { upper_leds { O 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name lower_sws \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lower_sws \
    op interface \
    ports { lower_sws { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name upper_sws \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upper_sws \
    op interface \
    ports { upper_sws { I 8 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


