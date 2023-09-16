
clean:
	./rbm/container run -- rm -Rf ./tmp/rbm-*
	rm -rf ./logs

# Stable Releases

ricochet-linux-stable: ricochet-linux-i686-stable ricochet-linux-x86_64-stable

ricochet-linux-i686-stable:
	./rbm/rbm build ricochet-refresh --target linux --target linux-i686 --target stable

ricochet-linux-x86_64-stable:
	./rbm/rbm build ricochet-refresh --target linux --target linux-x86_64 --target stable

ricochet-macos-stable: ricochet-macos-x86_64-stable ricochet-macos-aarch64-stable

ricochet-macos-x86_64-stable:
	./rbm/rbm build ricochet-refresh --target macos --target macos-x86_64 --target stable

ricochet-macos-aarch64-stable:
	./rbm/rbm build ricochet-refresh --target macos --target macos-aarch64 --target stable

ricochet-windows-stable: ricochet-windows-i686-stable ricochet-windows-x86_64-stable

ricochet-windows-i686-stable:
	./rbm/rbm build ricochet-refresh --target windows --target windows-i686 --target stable

ricochet-windows-x86_64-stable:
	./rbm/rbm build ricochet-refresh --target windows --target windows-x86_64 --target stable

ricochet-release-stable:
	./rbm/rbm build release --target stable

ricochet-release-stable-sign:
	./rbm/rbm build release --target stable --target sign

# Alpha Releases

ricochet-linux-alpha: ricochet-linux-i686-alpha ricochet-linux-x86_64-alpha

ricochet-linux-i686-alpha:
	./rbm/rbm build ricochet-refresh --target linux --target linux-i686 --target alpha

ricochet-linux-x86_64-alpha:
	./rbm/rbm build ricochet-refresh --target linux --target linux-x86_64 --target alpha

ricochet-macos-alpha: ricochet-macos-x86_64-alpha ricochet-macos-aarch64-alpha

ricochet-macos-x86_64-alpha:
	./rbm/rbm build ricochet-refresh --target macos --target macos-x86_64 --target alpha

ricochet-macos-aarch64-alpha:
	./rbm/rbm build ricochet-refresh --target macos --target macos-aarch64 --target alpha

ricochet-windows-alpha: ricochet-windows-i686-alpha ricochet-windows-x86_64-alpha

ricochet-windows-i686-alpha:
	./rbm/rbm build ricochet-refresh --target windows --target windows-i686 --target alpha

ricochet-windows-x86_64-alpha:
	./rbm/rbm build ricochet-refresh --target windows --target windows-x86_64 --target alpha

ricochet-release-alpha:
	./rbm/rbm build release --target alpha

ricochet-release-alpha-sign:
	./rbm/rbm build release --target alpha --target sign