include $(TOPDIR)/rules.mk

PKG_NAME:=xmm-modem
PKG_VERSION:=1.1.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Lutfa Ibtihaji Ilham <lutfailham96@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  PKGARCH:=all
  DEPENDS:=+comgt +kmod-usb-acm +kmod-usb-net-cdc-ncm
  TITLE:=Fibocom L850/L860 scripts
endef

define Package/$(PKG_NAME)/description
  Simple connect to cellular for Fibocom L850/L860 module (Intel XMM LTE-A 7360/7560)
endef

define Package/$(PKG_NAME)/conffiles
  /etc/config/xmm-modem
endef


define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef


define Package/$(PKG_NAME)/install
  $(CP) ./root/* $(1)/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
