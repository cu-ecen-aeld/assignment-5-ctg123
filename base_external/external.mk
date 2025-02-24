# This external.mk file is part of the buildroot external tree configuration
# It automatically includes all package-specific makefiles found in the package directory
# The BR2_EXTERNAL_project_base_PATH variable points to the root of your external tree

# The 'sort' function ensures consistent ordering of the included files
# 'wildcard' expands the pattern to match all .mk files in package subdirectories
include $(sort $(wildcard $(BR2_EXTERNAL_project_base_PATH)/package/*/*.mk))