TARGET := iphone:clang:12.2:7.0
INSTALL_TARGET_PROCESSES = bili-universal bili-hd2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BiliDownload

BiliDownload_FILES = Tweak.xm
BiliDownload_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
