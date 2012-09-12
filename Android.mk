LOCAL_PATH:= $(call my-dir)

# ========================================================
# libreadline.so
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	readline.c \
	vi_mode.c \
	funmap.c \
	keymaps.c \
	parens.c \
	search.c \
	rltty.c \
	complete.c \
	bind.c \
	isearch.c \
	display.c \
	signals.c \
	util.c \
	kill.c \
	undo.c \
	macro.c \
	input.c \
	callback.c \
	terminal.c \
	text.c \
	nls.c \
	misc.c \
	compat.c \
	xfree.c \
	xmalloc.c \
	history.c \
	histexpand.c \
	histfile.c \
	histsearch.c \
	shell.c \
	mbutil.c \
	tilde.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DRL_LIBRARY_VERSION='"6.2"' \
	-fPIC

LOCAL_MODULE:= libreadline
LOCAL_PRELINK_MODULE := false
LOCAL_SHARED_LIBRARIES := libdl libncurses

LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)

# ========================================================
#include $(call all-makefiles-under,$(LOCAL_PATH))

