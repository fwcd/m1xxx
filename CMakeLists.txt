cmake_minimum_required(VERSION 3.16)
project(m1xxx)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/vcpkg/scripts/buildsystems/vcpkg.cmake)
set(CMAKE_OSX_DEPLOYMENT_TARGET 11.0)
set(CMAKE_OSX_ARCHITECTURES arm64)

add_compile_options(-arch arm64 -mmacosx-version-min=11.0)
add_link_options(-arch arm64 -mmacosx-version-min=11.0)

add_subdirectory(mixxx)

find_package(PostgreSQL)
if(PostgreSQL_FOUND)
  target_link_libraries(mixxx-lib PRIVATE PostgreSQL::PostgreSQL)
endif()

find_package(ICU REQUIRED COMPONENTS uc i18n data)
target_link_libraries(mixxx-lib PRIVATE
  ICU::uc
  ICU::i18n
  ICU::data
)
