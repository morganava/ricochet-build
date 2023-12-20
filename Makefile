rbm=./rbm/rbm

##################
# Common Targets #
##################

submodule-update:
	git submodule update --init

clean:
	./rbm/container run -- rm -Rf ./tmp/rbm-*
	rm -rf ./logs
	rm -rf /var/tmp/${USER}

#################
# Build Targets #
#################

# Stable Releases

ricochet-linux-stable:
	$(MAKE) ricochet-linux-i686-stable
	$(MAKE) ricochet-linux-x86_64-stable

ricochet-linux-i686-stable: submodule-update
	$(rbm) build package --target linux --target linux-i686 --target stable

ricochet-linux-x86_64-stable: submodule-update
	$(rbm) build package --target linux --target linux-x86_64 --target stable

ricochet-macos-stable:
	$(MAKE) ricochet-macos-x86_64-stable
	$(MAKE)  ricochet-macos-aarch64-stable

ricochet-macos-x86_64-stable: submodule-update
	$(rbm) build package --target macos --target macos-x86_64 --target stable

ricochet-macos-aarch64-stable: submodule-update
	$(rbm) build package --target macos --target macos-aarch64 --target stable

ricochet-windows-stable:
	$(MAKE) ricochet-windows-i686-stable
	$(MAKE) ricochet-windows-x86_64-stable

ricochet-windows-i686-stable: submodule-update
	$(rbm) build package --target windows --target windows-i686 --target stable

ricochet-windows-x86_64-stable: submodule-update
	$(rbm) build package --target windows --target windows-x86_64 --target stable

ricochet-release-stable: submodule-update
	$(rbm) build release --target stable

ricochet-release-stable-sign: submodule-update
	$(rbm) build release --target stable --target sign

# Alpha Releases

ricochet-linux-alpha:
	$(MAKE) ricochet-linux-i686-alpha
	$(MAKE) ricochet-linux-x86_64-alpha

ricochet-linux-i686-alpha: submodule-update
	$(rbm) build package --target linux --target linux-i686 --target alpha

ricochet-linux-x86_64-alpha: submodule-update
	$(rbm) build package --target linux --target linux-x86_64 --target alpha

ricochet-macos-alpha:
	$(MAKE) ricochet-macos-x86_64-alpha
	$(MAKE) ricochet-macos-aarch64-alpha

ricochet-macos-x86_64-alpha: submodule-update
	$(rbm) build package --target macos --target macos-x86_64 --target alpha

ricochet-macos-aarch64-alpha: submodule-update
	$(rbm) build package --target macos --target macos-aarch64 --target alpha

ricochet-windows-alpha:
	$(MAKE) ricochet-windows-i686-alpha
	$(MAKE) ricochet-windows-x86_64-alpha

ricochet-windows-i686-alpha: submodule-update
	$(rbm) build package --target windows --target windows-i686 --target alpha

ricochet-windows-x86_64-alpha: submodule-update
	$(rbm) build package --target windows --target windows-x86_64 --target alpha

ricochet-release-alpha: submodule-update
	$(rbm) build release --target alpha

ricochet-release-alpha-sign: submodule-update
	$(rbm) build release --target alpha --target sign

# Dev Builds

ricochet-linux-testbuild:
	$(MAKE) ricochet-linux-i686-testbuild
	$(MAKE) ricochet-linux-x86_64-testbuild

ricochet-linux-i686-testbuild: submodule-update
	$(rbm) build package --target linux --target linux-i686 --target testbuild

ricochet-linux-x86_64-testbuild: submodule-update
	$(rbm) build package --target linux --target linux-x86_64 --target testbuild

ricochet-macos-testbuild:
	$(MAKE) ricochet-macos-x86_64-testbuild
	$(MAKE) ricochet-macos-aarch64-testbuild

ricochet-macos-x86_64-testbuild: submodule-update
	$(rbm) build package --target macos --target macos-x86_64 --target testbuild

ricochet-macos-aarch64-testbuild: submodule-update
	$(rbm) build package --target macos --target macos-aarch64 --target testbuild

ricochet-windows-testbuild:
	$(MAKE) ricochet-windows-i686-testbuild
	$(MAKE) ricochet-windows-x86_64-testbuild

ricochet-windows-i686-testbuild: submodule-update
	$(rbm) build package --target windows --target windows-i686 --target testbuild

ricochet-windows-x86_64-testbuild: submodule-update
	$(rbm) build package --target windows --target windows-x86_64 --target testbuild

ricochet-release-testbuild: submodule-update
	$(rbm) build release --target testbuild
