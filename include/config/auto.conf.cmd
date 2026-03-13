autoconfig := include/config/auto.conf

deps_config := \
	/Users/sandersouza/Developer/msxbarepi/config/Kconfig.msxbarepi \

$(autoconfig): $(deps_config)
$(deps_config): ;
