set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_BUILD_TYPE release)
set(VCPKG_CMAKE_SYSTEM_NAME Darwin)
set(VCPKG_CMAKE_SYSTEM_VERSION 14.0)
set(VCPKG_OSX_ARCHITECTURES x86_64)
set(VCPKG_OSX_DEPLOYMENT_TARGET 12.0)
set(VCPKG_CMAKE_CONFIGURE_OPTIONS -DCMAKE_SYSROOT=/opt/x86_64-apple-darwin14/x86_64-apple-darwin14/sys-root -DCMAKE_SYSTEM_FRAMEWORK_PATH=/opt/x86_64-apple-darwin14/x86_64-apple-darwin14/sys-root/System/Library/Frameworks)

# Curl checks the OSX version to see what features it can refer from the O.S. SecureTransport library. If the version is too recent, the definitions are missing
# in the API bundled with BinaryBuilder
if(PORT MATCHES "curl")
	set(VCPKG_OSX_DEPLOYMENT_TARGET 10.11)
endif()