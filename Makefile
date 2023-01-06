all: darwin-amd64 darwin-arm64

darwin-arm64:
	mkdir -p build
	nativefier --name 'KOOK' -p darwin -a arm64 --single-instance --app-version v0.1.0 'https://www.kookapp.cn/app' build
	create-dmg --window-size 800 400 --app-drop-link 600 185 build/KOOK-darwin-arm64.dmg build/KOOK-darwin-arm64

darwin-amd64:
	mkdir -p build
	nativefier --name 'KOOK' -p darwin -a x64 --single-instance --app-version v0.1.0 'https://www.kookapp.cn/app' build
	create-dmg --window-size 800 400 --app-drop-link 600 185 build/KOOK-darwin-x64.dmg build/KOOK-darwin-x64

clean:
	rm -rf build