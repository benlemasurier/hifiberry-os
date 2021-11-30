################################################################################
#
# webradio
#
################################################################################

WEBRADIO_VERSION = 5ee8d746b3bab7f6847ce161f9b21364c10d3d3f
WEBRADIO_SITE = $(call github,benlemasurier,radio,$(WEBRADIO_VERSION))

define WEBRADIO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0555 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/webradio/start-radio \
           $(TARGET_DIR)/opt/hifiberry/bin/start-radio
	mkdir -p  $(TARGET_DIR)/opt/beocreate/beo-extensions/radio
	cp -rv $(@D)/* $(TARGET_DIR)/opt/beocreate/beo-extensions/radio
endef

$(eval $(generic-package))
