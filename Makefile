
clean:
	./rbm/container run -- rm -Rf ./tmp/rbm-*
	rm -rf ./logs

ricochet-linux: ricochet-linux-i686 ricochet-linux-x86_64

ricochet-linux-i686:
	./rbm/rbm build ricochet-refresh --target linux --target linux-i686

ricochet-linux-x86_64:
	./rbm/rbm build ricochet-refresh --target linux --target linux-x86_64

ricochet-windows: ricochet-windows-i686 ricochet-windows-x86_64

ricochet-windows-i686:
	./rbm/rbm build ricochet-refresh --target windows --target windows-i686

ricochet-windows-x86_64:
	./rbm/rbm build ricochet-refresh --target windows --target windows-x86_64

ricochet-macos: ricochet-macos-x86_64 ricochet-macos-aarch64

ricochet-macos-x86_64:
	./rbm/rbm build ricochet-refresh --target macos --target macos-x86_64

ricochet-macos-aarch64:
	./rbm/rbm build ricochet-refresh --target macos --target macos-aarch64

ricochet-release:
	./rbm/rbm build release --target linux --target linux-i686
	./rbm/rbm build release --target linux --target linux-x86_64
	./rbm/rbm build release --target windows --target windows-i686
	./rbm/rbm build release --target windows --target windows-x86_64
	./rbm/rbm build release --target macos --target macos-x86_64