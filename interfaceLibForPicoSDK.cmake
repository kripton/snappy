## Include this file if you want to use the RF24 library
## in YOUR (Pico) project.

cmake_minimum_required(VERSION 3.12)

set(HAVE_SYS_UIO_H_01 0)
set(PROJECT_VERSION_MAJOR 1)
set(PROJECT_VERSION_MINOR 1)
set(PROJECT_VERSION_PATCH 9)

## "Special" stuff copied from the official CMakeLists.txt-file
configure_file(
  "${CMAKE_CURRENT_LIST_DIR}/snappy-stubs-public.h.in"
  "${CMAKE_CURRENT_LIST_DIR}/snappy-stubs-public.h")

# Define the snappy library
add_library(snappy INTERFACE)

target_sources(snappy INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/snappy.cc
    ${CMAKE_CURRENT_LIST_DIR}/snappy-c.cc
    ${CMAKE_CURRENT_LIST_DIR}/snappy-sinksource.cc
)

target_include_directories(snappy INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/
)
