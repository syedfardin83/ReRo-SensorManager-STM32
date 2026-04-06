# VL6180X sensor library
add_library(vl6180x STATIC
    Src/vl6180x.c
)

target_include_directories(vl6180x PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc
)

# Inherit HAL/CMSIS include paths and compile definitions from CubeMX target
# so library sources can directly use HAL APIs.
target_link_libraries(vl6180x PUBLIC
    stm32cubemx
)