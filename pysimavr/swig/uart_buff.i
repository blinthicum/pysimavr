 %module uart_buff
 %{
 /* Includes the header in the wrapper code */
#include "fifo_declare.h"
//#include "sim_avr.h"
#include "uart_buff.h"

// HACK
#define AVR_LOG(...) 
#include "sim_irq.c"
#include "sim_io.c"
//#include "sim_cycle_timers.c"

%}
%apply unsigned long { uint32_t }
%apply unsigned long long { uint64_t }
%apply unsigned char { uint8_t }
%apply unsigned short { uint16_t }
 
 /* Parse the header file to generate wrappers */
%include "fifo_declare.h"
//%include "sim_avr.h"
%include "uart_buff.h"
