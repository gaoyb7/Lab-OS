#include "comm_head.h"
#include "syscall.h"

const char *msg = "Hello, world!";
char *cal = "2+3=";
uint8_t a, b, ans;

int main() {
    sys_write_str("#### Test sys_write_str function ####\r\n");
    sys_write_str("This message is print by system-call function sys_write_str\r\n");
    sys_ouch();

    sys_write_str("\r\n#### Test sys_to_upper && sys_to_lower function ####\r\n");
    sys_write_str("Origin string: "); 
    sys_write_str(msg); sys_write_str("\r\n");

    sys_write_str("To upper: ");
    sys_to_upper(msg, __builtin_strlen(msg));
    sys_write_str(msg); sys_write_str("\r\n");

    sys_write_str("To lower: ");
    sys_to_lower(msg, __builtin_strlen(msg));
    sys_write_str(msg); sys_write_str("\r\n");

    sys_write_str("\r\n#### Test sys_to_char && sys_to_num function ####\r\n");
    sys_write_str("Caculate 2 + 3:\r\n");
    sys_write_str(cal);
    a = sys_to_num(cal[0]); b = sys_to_num(cal[2]);
    ans = a + b;
    sys_write_ch(sys_to_char(ans));
    sys_write_str("\r\n");
}
