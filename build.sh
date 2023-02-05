rm -rf ./build
xcodebuild archive \
-scheme VOISPrivateFramework \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/VOISFramework.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
-scheme VOISPrivateFramework \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/VOISFramework.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

rm -rf ./build/VOISFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/VOISFramework.framework/PrivateHeaders
rm ./build/VOISFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/VOISFramework.framework/Modules/module.modulemap
cp ./public.modulemap ./build/VOISFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/VOISFramework.framework/Modules/module.modulemap

rm -rf ./build/VOISFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/VOISFramework.framework/PrivateHeaders
rm ./build/VOISFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/VOISFramework.framework/Modules/module.modulemap
cp ./public.modulemap ./build/VOISFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/VOISFramework.framework/Modules/module.modulemap

xcodebuild -create-xcframework \
-framework './build/VOISFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/VOISFramework.framework' \
-framework './build/VOISFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/VOISFramework.framework' \
-output './build/VOISFramework.xcframework'
