#ifndef __DEBUG_HELPER__
#define __DEBUG_HELPER__
#include <iostream>
#include <stdio.h>
#include <time.h>
#include "../constants.h"


enum class DEBUG_TYPE
{
    ERROR_T,
    INFO_T,
    WARNING_T
};

enum class MACHINE_TYPE
{
    SERVER,
    CLIENT
};


/*Functional class to provide debug interface*/
class Debug
{
    public:
        Debug ();
        ~Debug();
        template <typename ...mesTL>
         void info (mesTL... messages);

        template <typename ...mesTL>
         void warning (mesTL... messages);
        
        template <typename ...mesTL>
         void fatal (mesTL... messages);

        std::string get_current_time (void) const noexcept;

        int set_output_stream ( std::ostream* oS_ptr);
        static void disable_debug   (void);
        static void enable_debug    (void);
    private:        
        inline static bool debug_state = true;
        std::ostream* outp_stream;


};

template <typename ...mesTL>
 void Debug::info (mesTL... messages)
{       
    if (!Debug::debug_state) return;
     *outp_stream <<get_current_time() << " [ INFO ] ";
    ((*outp_stream << messages << ' '), ...);
    *outp_stream << std::endl;
}

template <typename ...mesTL>
 void Debug::warning (mesTL... messages)
{
    if (!Debug::debug_state) return;
    *outp_stream << get_current_time() << " [ WARINING ] ";
    ((*outp_stream << messages << ' '), ...);
    *outp_stream << std::endl;

}

template <typename ...mesTL>
 void Debug::fatal (mesTL... messages)
{
    if (!Debug::debug_state) return;
    *outp_stream << get_current_time() <<  " [ FATAL ] ";
    ((*outp_stream << messages << ' '), ...);
    *outp_stream << std::endl;

}

#endif