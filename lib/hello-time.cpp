#include "hello-time.hpp"

int htime(){
    std::time_t result = std::time(nullptr);
    return int(result);
}