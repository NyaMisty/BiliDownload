INSTALL_TARGET_PROCESSES = bili-universal

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BiliDownload

BiliDownload_FILES = Tweak.xm
BiliDownload_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
