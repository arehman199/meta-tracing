FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PATCHES_MEMF_TRACING = " \
            file://0001-lttng-adaptation-layer-for-memf-tracing.patch \
            file://0002-lttng-adaptation-layer-for-synchornization-tracing.patch \
            file://work-around_upstream_Linux_timekeeping_bug.patch \
            file://show_warning_for_broken_clock_workaround.patch \
            file://nmi-safe_clock_on_32-bit_systems.patch \
"

SRC_URI_append = " ${@PATCHES_MEMF_TRACING if d.getVar('MEMF_TRACING', True) == '1' else ''}"
