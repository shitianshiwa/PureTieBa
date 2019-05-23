INSTALL_TARGET_PROCESSES = TBClient

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = pureTieBa

pureTieBa_FILES = Tweak.x
pureTieBa_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
