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
    name a0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a0 \
    op interface \
    ports { a0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name a1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a1 \
    op interface \
    ports { a1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name a2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a2 \
    op interface \
    ports { a2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name a3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a3 \
    op interface \
    ports { a3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name b0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b0 \
    op interface \
    ports { b0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name b1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1 \
    op interface \
    ports { b1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name b2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2 \
    op interface \
    ports { b2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name b3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b3 \
    op interface \
    ports { b3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name M \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_M \
    op interface \
    ports { M { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name N \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_N \
    op interface \
    ports { N { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name P \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P \
    op interface \
    ports { P { O 1 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


