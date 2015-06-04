#include "comm_head.h"
#include "stdio.h"

const char *msg =
"Command        Statement\n"
"=========================================\n"
"date           - Print current date\n"
"time           - Print current time\n"
"reboot         - Reboot the system\n"
"clear          - Clear screen\n"
"sh             - Shell\n"
"top            - Show current process\n"
"=========================================\n"
"stdio          - Test stdio library\n"
"syscall        - Test syscall library\n"
"fork           - Test fork function\n"
"rep[1-4]       - For multiprocess test\n";

int main() {
    puts(msg);
}
