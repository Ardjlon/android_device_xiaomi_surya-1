# AOSP  Refresh Rate Dynamic configurations
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms=500 \
    ro.surface_flinger.set_touch_timer_ms=750 \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.use_content_detection_for_refresh_rate=true \
    ro.surface_flinger.support_kernel_idle_timer=true \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.use_color_management=true

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.defer_fps_frame_count=4 \
    vendor.display.disable_idle_time_hdr=1 \
    vendor.display.disable_idle_time_video=1 \
    vendor.display.idle_time=0 \
    vendor.display.idle_time_inactive=0

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_app_phase_offset_ns=500000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_phase_offset_ns=500000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=6500000 \
    debug.sf.high_fps_early_phase_offset_ns=6100000 \
    debug.sf.high_fps_late_app_phase_offset_ns=1000000

# Blur
ifeq ($(TARGET_SUPPORTS_BLUR), true)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1 \
    persist.sys.sf.disable_blurs=1
endif
