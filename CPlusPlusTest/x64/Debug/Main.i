










#pragma once











#pragma once









#pragma once




























    







    
    


        
            
        


    
















#pragma once





















































































































































































































































































































































































































































































































































































































































































































#pragma region Input Buffer SAL 1 compatibility macros



























































































































































































































































































































































































































































































































































































































































































































































































#pragma endregion Input Buffer SAL 1 compatibility macros
























































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {









































































































































































































































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    

    
    

























































































































































































































































    
    
























































































}





















#pragma once


extern "C" {
















































































































































































































































































































































































}
















#pragma once



#pragma pack(push, 8)



    


        
    





    


        
    




    





    


#pragma warning(push)
#pragma warning(disable:   4514 4820 )


extern "C" {







    
    
        typedef unsigned __int64  uintptr_t;
    





    
    


        typedef char* va_list;
    



    













    
    






























































    void __cdecl __va_start(va_list* , ...);

    
    



    




} 



    extern "C++"
    {
        template <typename _Ty>
        struct __vcrt_va_list_is_reference
        {
            enum : bool { __the_value = false };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        struct __vcrt_assert_va_start_is_not_reference
        {
            static_assert(!__vcrt_va_list_is_reference<_Ty>::__the_value,
                "va_start argument must not have reference type and must not be parenthesized");
        };
    } 

    







#pragma warning(pop) 
#pragma pack(pop)


#pragma warning(push)
#pragma warning(disable:   4514 4820 )






    



    























__pragma(pack(push, 8)) extern "C" {




    


        
    

















    




        
    



    


        
    







    
    





    









    







    





    



    
        
        
    









    typedef unsigned __int64 size_t;
    typedef __int64          ptrdiff_t;
    typedef __int64          intptr_t;







    typedef bool  __vcrt_bool;










    



    



    









    
        
    





    









    extern "C++"
    {
        template <typename _CountofType, size_t _SizeOfArray>
        char (*__countof_helper(__unaligned _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];

        
    }









    
        
    





    






        
        
    

    








    


        
    





    












    


        




    







    
        
    






    void __cdecl __security_init_cookie(void);

    






        void __cdecl __security_check_cookie(  uintptr_t _StackCookie);
        __declspec(noreturn) void __cdecl __report_gsfailure(  uintptr_t _StackCookie);
    


extern uintptr_t __security_cookie;


    
    
    


} __pragma(pack(pop))

#pragma warning(pop) 













    


        
    




    














    



    











        
    



    


        
    


#pragma warning(push)
#pragma warning(disable: 4324  4514 4574 4710 4793 4820 4995 4996 28719 28726 28727 )


__pragma(pack(push, 8)) extern "C" {







    


        
    







    



    


        
    







    



    









    




    







    










    














    


        
    





    





    





    










extern "C++"
{
    template<bool _Enable, typename _Ty>
    struct _CrtEnableIf;

    template<typename _Ty>
    struct _CrtEnableIf<true, _Ty>
    {
        typedef _Ty _Type;
    };
}



    typedef bool  __crt_bool;

















    
        
    




























    


        
    







    



 
  


   
  
 














    

















        
    



    



    
        
    



















    __declspec(dllimport) void __cdecl _invalid_parameter(
          wchar_t const*,
          wchar_t const*,
          wchar_t const*,
                unsigned int,
                uintptr_t
        );


__declspec(dllimport) void __cdecl _invalid_parameter_noinfo(void);
__declspec(dllimport) __declspec(noreturn) void __cdecl _invalid_parameter_noinfo_noreturn(void);

__declspec(noreturn)
__declspec(dllimport) void __cdecl _invoke_watson(
      wchar_t const* _Expression,
      wchar_t const* _FunctionName,
      wchar_t const* _FileName,
            unsigned int _LineNo,
            uintptr_t _Reserved);


    
        

    



























    









    


        


    










    






        
    



    


        
    








































    







    





    


        


            
        
    













    


        



    



    
        
    





    
        
        
        
    





    
        
              
        


    





    
        
    





    
        
    







    









typedef int                           errno_t;
typedef unsigned short                wint_t;
typedef unsigned short                wctype_t;
typedef long                          __time32_t;
typedef __int64                       __time64_t;

typedef struct __crt_locale_data_public
{
      unsigned short const* _locale_pctype;
      int _locale_mb_cur_max;
               unsigned int _locale_lc_codepage;
} __crt_locale_data_public;

typedef struct __crt_locale_pointers
{
    struct __crt_locale_data*    locinfo;
    struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;

typedef __crt_locale_pointers* _locale_t;

typedef struct _Mbstatet
{ 
    unsigned long _Wchar;
    unsigned short _Byte, _State;
} _Mbstatet;

typedef _Mbstatet mbstate_t;










    


        typedef __time64_t time_t;
    




    



    typedef size_t rsize_t;











    

        










        










        










        










        










        










        










        










        










        












        












        
















    




























































































    















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































        
        
        
        

        

            


            


            


            


            


            


            


            


            



            



            


            


            


            


            


            


            


            


            


            


            



            



            



            


            



            




            

            




            

            




            

            




            

            




            

            




            

            




            

            




            

        












































    


} __pragma(pack(pop))


#pragma warning(pop) 











#pragma once










#pragma once



#pragma warning(push)
#pragma warning(disable: 4324  4514 4574 4710 4793 4820 4995 4996 28719 28726 28727 )


__pragma(pack(push, 8)) extern "C" {









    



    


        
    

















    















    
        


            #pragma detect_mismatch("_CRT_STDIO_ISO_WIDE_SPECIFIERS", "0")
        
    










    
    
       
    
    __declspec(noinline) __inline unsigned __int64* __cdecl __local_stdio_printf_options(void)
    {
        static unsigned __int64 _OptionsStorage;
        return &_OptionsStorage;
    }

    
    
       
    
    __declspec(noinline) __inline unsigned __int64* __cdecl __local_stdio_scanf_options(void)
    {
        static unsigned __int64 _OptionsStorage;
        return &_OptionsStorage;
    }

























} __pragma(pack(pop))

#pragma warning(pop) 


#pragma warning(push)
#pragma warning(disable: 4324  4514 4574 4710 4793 4820 4995 4996 28719 28726 28727 )


__pragma(pack(push, 8)) extern "C" {







    
    typedef struct _iobuf
    {
        void* _Placeholder;
    } FILE;


__declspec(dllimport) FILE* __cdecl __acrt_iob_func(unsigned _Ix);










    
    
    
    
    
    
    __declspec(dllimport) wint_t __cdecl fgetwc(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _fgetwchar(void);

    
    __declspec(dllimport) wint_t __cdecl fputwc(
             wchar_t _Character,
          FILE*   _Stream);

    
    __declspec(dllimport) wint_t __cdecl _fputwchar(
          wchar_t _Character
        );

     
    __declspec(dllimport) wint_t __cdecl getwc(
          FILE* _Stream
        );

     
    __declspec(dllimport) wint_t __cdecl getwchar(void);


    
     
    __declspec(dllimport) wchar_t* __cdecl fgetws(
          wchar_t* _Buffer,
                                  int      _BufferCount,
                               FILE*    _Stream
        );

    
    __declspec(dllimport) int __cdecl fputws(
           wchar_t const* _Buffer,
          FILE*          _Stream
        );

    
     
    __declspec(dllimport) wchar_t* __cdecl _getws_s(
          wchar_t* _Buffer,
                                  size_t   _BufferCount
        );

    extern "C++" { template <size_t _Size> inline   wchar_t* __cdecl _getws_s( wchar_t (&_Buffer)[_Size]) throw() { return _getws_s(_Buffer, _Size); } }

    
    __declspec(dllimport) wint_t __cdecl putwc(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl putwchar(
          wchar_t _Character
        );

    
    __declspec(dllimport) int __cdecl _putws(
          wchar_t const* _Buffer
        );

    
    __declspec(dllimport) wint_t __cdecl ungetwc(
             wint_t _Character,
          FILE*  _Stream
        );

     
    __declspec(dllimport) FILE * __cdecl _wfdopen(
            int            _FileHandle,
          wchar_t const* _Mode
        );

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) FILE* __cdecl _wfopen(
          wchar_t const* _FileName,
          wchar_t const* _Mode
        );

    
    __declspec(dllimport) errno_t __cdecl _wfopen_s(
          FILE**         _Stream,
                             wchar_t const* _FileName,
                             wchar_t const* _Mode
        );

     
    __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfreopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) FILE* __cdecl _wfreopen(
           wchar_t const* _FileName,
           wchar_t const* _Mode,
          FILE*          _OldStream
        );

    
    __declspec(dllimport) errno_t __cdecl _wfreopen_s(
          FILE**         _Stream,
                             wchar_t const* _FileName,
                             wchar_t const* _Mode,
                            FILE*          _OldStream
        );

     
    __declspec(dllimport) FILE* __cdecl _wfsopen(
          wchar_t const* _FileName,
          wchar_t const* _Mode,
            int            _ShFlag
        );

    __declspec(dllimport) void __cdecl _wperror(
          wchar_t const* _ErrorMessage
        );

    

         
        __declspec(dllimport) FILE* __cdecl _wpopen(
              wchar_t const* _Command,
              wchar_t const* _Mode
            );

    

    __declspec(dllimport) int __cdecl _wremove(
          wchar_t const* _FileName
        );

    
    

     
    __declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wtempnam(
          wchar_t const* _Directory,
          wchar_t const* _FilePrefix
        );

    

     
    
    __declspec(dllimport) errno_t __cdecl _wtmpnam_s(
          wchar_t* _Buffer,
                                  size_t   _BufferCount
        );

    extern "C++" { template <size_t _Size> inline   errno_t __cdecl _wtmpnam_s( wchar_t (&_Buffer)[_Size]) throw() { return _wtmpnam_s(_Buffer, _Size); } }

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wtmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport)  wchar_t* __cdecl _wtmpnam(  wchar_t *_Buffer);



    
    
    
    
    
    
    __declspec(dllimport) wint_t __cdecl _fgetwc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _fputwc_nolock(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _getwc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _putwc_nolock(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _ungetwc_nolock(
             wint_t _Character,
          FILE*  _Stream
        );

    







    
    





    
    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf_s(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf_p(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __inline int __cdecl _vfwprintf_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return __stdio_common_vfwprintf((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vfwprintf(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vfwprintf_l(_Stream, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vfwprintf_s_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return __stdio_common_vfwprintf_s((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vfwprintf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    


        {
            return _vfwprintf_s_l(_Stream, _Format, 0, _ArgList);
        }
    

    

    
    __inline int __cdecl _vfwprintf_p_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return __stdio_common_vfwprintf_p((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl _vfwprintf_p(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vfwprintf_p_l(_Stream, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vwprintf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vfwprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vwprintf_s_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vwprintf_s(
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    


        {
            return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        }
    

    

    
    __inline int __cdecl _vwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl _vwprintf_p(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _fwprintf_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwprintf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl fwprintf(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfwprintf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _fwprintf_s_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwprintf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl fwprintf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfwprintf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    
    __inline int __cdecl _fwprintf_p_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwprintf_p_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _fwprintf_p(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfwprintf_p_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _wprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl wprintf(
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfwprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _wprintf_s_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl wprintf_s(
                wchar_t const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    
    __inline int __cdecl _wprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _wprintf_p(
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    


    
    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfwscanf(
                                            unsigned __int64 _Options,
                                         FILE*            _Stream,
            wchar_t const*   _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

    
    __inline int __cdecl _vfwscanf_l(
          FILE*                                const _Stream,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    


    {
        return __stdio_common_vfwscanf(
            (*__local_stdio_scanf_options ()),
            _Stream, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vfwscanf(
          FILE*                                const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vfwscanf_l(_Stream, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vfwscanf_s_l(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    


    {
        return __stdio_common_vfwscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Stream, _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vfwscanf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    


        {
            return _vfwscanf_s_l(_Stream, _Format, 0, _ArgList);
        }
    

    

    __inline int __cdecl _vwscanf_l(
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    


    {
        return _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vwscanf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vfwscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vwscanf_s_l(
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    


    {
        return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vwscanf_s(
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    


        {
            return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        }
    

    

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _fwscanf_l(
                                         FILE*          const _Stream,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwscanf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "fwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl fwscanf(
                               FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfwscanf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _fwscanf_s_l(
                                           FILE*          const _Stream,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwscanf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl fwscanf_s(
                                     FILE*          const _Stream,
                wchar_t const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfwscanf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _wscanf_l(
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "wscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl wscanf(
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfwscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _wscanf_s_l(
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl wscanf_s(
                wchar_t const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    



    
    
    
    
    
    
        



    



     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf(
                                             unsigned __int64 _Options,
                 wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf_s(
                                             unsigned __int64 _Options,
                     wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vsnwprintf_s(
                                             unsigned __int64 _Options,
                 wchar_t*         _Buffer,
                                             size_t           _BufferCount,
                                             size_t           _MaxCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf_p(
                                             unsigned __int64 _Options,
                     wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _vsnwprintf_l(
            wchar_t*       const _Buffer,
                                                  size_t         const _BufferCount,
                 wchar_t const* const _Format,
                                              _locale_t      const _Locale,
                                                     va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vsnwprintf_s_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsnwprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vsnwprintf_s(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    


    {
        return _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
    }
    

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __inline   int __cdecl _snwprintf(    wchar_t *_Buffer,   size_t _BufferCount,     wchar_t const* _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __inline   int __cdecl _vsnwprintf(    wchar_t *_Buffer,   size_t _BufferCount,     wchar_t const* _Format, va_list _Args);

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _vsnwprintf(
            wchar_t*       _Buffer,
                                                  size_t         _BufferCount,
                           wchar_t const* _Format,
                                                     va_list        _ArgList
        )
    


    {
        return _vsnwprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

    extern "C++" { template <size_t _Size> inline   int __cdecl _vsnwprintf_s( wchar_t (&_Buffer)[_Size],   size_t _BufferCount,     wchar_t const* _Format, va_list _ArgList) throw() { return _vsnwprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }

     
    
    __inline int __cdecl _vswprintf_c_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vswprintf_c(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    


    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl _vswprintf_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    


    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    

     
    
    __inline int __cdecl __vswprintf_l(
                  wchar_t*       const _Buffer,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        return _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    

     
    
    __inline int __cdecl _vswprintf(
           wchar_t*       const _Buffer,
               wchar_t const* const _Format,
                                         va_list              _ArgList
        )
    


    {
        return _vswprintf_l(_Buffer, (size_t)-1, _Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl vswprintf(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    


    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl _vswprintf_s_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
                                                      va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vswprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

    

         
        __inline int __cdecl vswprintf_s(
               wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
            )
    


        {
            return _vswprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        }
    

    

    extern "C++" { template <size_t _Size> inline   int __cdecl vswprintf_s( wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, va_list _ArgList) throw() { return vswprintf_s(_Buffer, _Size, _Format, _ArgList); } }

     
    
    __inline int __cdecl _vswprintf_p_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
                                                      va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vswprintf_p(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vswprintf_p(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                            wchar_t const* const _Format,
                                                      va_list              _ArgList
        )
    


    {
        return _vswprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

     
     
    __inline int __cdecl _vscwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
     
    __inline int __cdecl _vscwprintf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vscwprintf_l(_Format, 0, _ArgList);
    }
    

     
     
    __inline int __cdecl _vscwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    


    {
        int const _Result = __stdio_common_vswprintf_p(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
     
    __inline int __cdecl _vscwprintf_p(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    


    {
        return _vscwprintf_p_l(_Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl __swprintf_l(
                  wchar_t*       const _Buffer,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = __vswprintf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _swprintf_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _swprintf(
           wchar_t*       const _Buffer,
               wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = __vswprintf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl swprintf(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "__swprintf_l_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __inline   int __cdecl __swprintf_l(   wchar_t *_Buffer,     wchar_t const* _Format,   _locale_t _Locale, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __inline   int __cdecl __vswprintf_l(   wchar_t *_Buffer,     wchar_t const* _Format,   _locale_t _Locale, va_list _Args);

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __inline   int __cdecl _swprintf(   wchar_t *_Buffer,     wchar_t const* _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __inline   int __cdecl _vswprintf(   wchar_t *_Buffer,     wchar_t const* _Format, va_list _Args);

     
    
    __inline int __cdecl _swprintf_s_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vswprintf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

         
        __inline int __cdecl swprintf_s(
               wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vswprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    extern "C++" { template <size_t _Size> inline   int __cdecl swprintf_s( wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format))))); return vswprintf_s(_Buffer, _Size, _Format, _ArgList); } }

     
    
    __inline int __cdecl _swprintf_p_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vswprintf_p_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _swprintf_p(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vswprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _swprintf_c_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _swprintf_c(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _snwprintf_l(
            wchar_t*       const _Buffer,
                                                  size_t         const _BufferCount,
                 wchar_t const* const _Format,
                                              _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));

        _Result = _vsnwprintf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snwprintf(
            wchar_t*       _Buffer,
                                                  size_t         _BufferCount,
                           wchar_t const* _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));

        _Result = _vsnwprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snwprintf_s_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snwprintf_s(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                                wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    extern "C++" { template <size_t _Size> inline   int __cdecl _snwprintf_s( wchar_t (&_Buffer)[_Size],   size_t _BufferCount,     wchar_t const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format))))); return _vsnwprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }

     
    __inline int __cdecl _scwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vscwprintf_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
     
    __inline int __cdecl _scwprintf(
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vscwprintf_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
     
    __inline int __cdecl _scwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vscwprintf_p_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
     
    __inline int __cdecl _scwprintf_p(
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vscwprintf_p_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    


    
        
        
        #pragma warning(push)
        #pragma warning(disable: 4141 6054)

        

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
            inline int swprintf(
                           wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                ...) throw()
            {
                int _Result;
                va_list _ArgList;
                ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
                _Result = vswprintf(_Buffer, 2147483647, _Format, _ArgList);
                ((void)(_ArgList = (va_list)0));
                return _Result;
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
            inline int __cdecl vswprintf(
                           wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                              va_list              _ArgList
                ) throw()
            {
                return vswprintf(_Buffer, 2147483647, _Format, _ArgList);
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
            inline int _swprintf_l(
                                     wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                                 _locale_t      const _Locale,
                ...) throw()
            {
                int _Result;
                va_list _ArgList;
                ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
                _Result = _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
                ((void)(_ArgList = (va_list)0));
                return _Result;
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
            inline int __cdecl _vswprintf_l(
                                     wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                                 _locale_t      const _Locale,
                                                        va_list              _ArgList
                ) throw()
            {
                return _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
            }

        

        #pragma warning(pop)
    

    







    
    
    
    
    
     
    __declspec(dllimport) int __cdecl __stdio_common_vswscanf(
                                            unsigned __int64 _Options,
                  wchar_t const*   _Buffer,
                                            size_t           _BufferCount,
            wchar_t const*   _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

     
    
    __inline int __cdecl _vswscanf_l(
                                 wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    


    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    

     
    
    __inline int __cdecl vswscanf(
                                 wchar_t const* _Buffer,
            wchar_t const* _Format,
                                      va_list        _ArgList
        )
    


    {
        return _vswscanf_l(_Buffer, _Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl _vswscanf_s_l(
                                 wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    


    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    

    

         
        
        __inline int __cdecl vswscanf_s(
                                     wchar_t const* const _Buffer,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    


        {
            return _vswscanf_s_l(_Buffer, _Format, 0, _ArgList);
        }
    

    

    extern "C++" { template <size_t _Size> inline   int __cdecl vswscanf_s(  wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, va_list _ArgList) throw() { return vswscanf_s(_Buffer, _Size, _Format, _ArgList); } }

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _vsnwscanf_l(
                  wchar_t const* const _Buffer,
                                            size_t         const _BufferCount,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
                                               va_list              _ArgList
        )
    


    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    

     
    
    __inline int __cdecl _vsnwscanf_s_l(
                    wchar_t const* const _Buffer,
                                              size_t         const _BufferCount,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
                                                 va_list              _ArgList
        )
    


    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _swscanf_l(
                                          wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                                        _locale_t            _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vswscanf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
      __declspec(deprecated("This function or variable may be unsafe. Consider using " "swscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl swscanf(
                                wchar_t const* const _Buffer,
            wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vswscanf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _swscanf_s_l(
                                            wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vswscanf_s_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

         
        
        __inline int __cdecl swscanf_s(
                                      wchar_t const* const _Buffer,
                wchar_t const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vswscanf_s_l(_Buffer, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _snwscanf_l(
                  wchar_t const* const _Buffer,
                                            size_t         const _BufferCount,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));

        _Result = _vsnwscanf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _snwscanf(
            wchar_t const* const _Buffer,
                                      size_t         const _BufferCount,
                wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));

        _Result = _vsnwscanf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snwscanf_s_l(
                    wchar_t const* const _Buffer,
                                              size_t         const _BufferCount,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsnwscanf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snwscanf_s(
             wchar_t const* const _Buffer,
                                       size_t         const _BufferCount,
               wchar_t const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsnwscanf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    




} __pragma(pack(pop))

#pragma warning(pop) 


#pragma warning(push)
#pragma warning(disable: 4324  4514 4574 4710 4793 4820 4995 4996 28719 28726 28727 )


__pragma(pack(push, 8)) extern "C" {































    
















    
    



typedef __int64 fpos_t;





    
    __declspec(dllimport) errno_t __cdecl _get_stream_buffer_pointers(
               FILE*   _Stream,
          char*** _Base,
          char*** _Pointer,
          int**   _Count
        );


    
    
    
    
    
    

        
        __declspec(dllimport) errno_t __cdecl clearerr_s(
              FILE* _Stream
            );

        
         
        __declspec(dllimport) errno_t __cdecl fopen_s(
              FILE**      _Stream,
                                     char const* _FileName,
                                     char const* _Mode
            );

        
         
        __declspec(dllimport) size_t __cdecl fread_s(
                void*  _Buffer,
                                    size_t _BufferSize,
                                                                            size_t _ElementSize,
                                                                            size_t _ElementCount,
                                                                         FILE*  _Stream
            );

        
        __declspec(dllimport) errno_t __cdecl freopen_s(
              FILE**      _Stream,
                                 char const* _FileName,
                                 char const* _Mode,
                                FILE*       _OldStream
            );

         
        __declspec(dllimport) char* __cdecl gets_s(
              char*   _Buffer,
                               rsize_t _Size
            );

        
        __declspec(dllimport) errno_t __cdecl tmpfile_s(
                FILE** _Stream
            );

         
        
        __declspec(dllimport) errno_t __cdecl tmpnam_s(
              char*   _Buffer,
                               rsize_t _Size
            );

    

    __declspec(dllimport) void __cdecl clearerr(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl fclose(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fcloseall(void);

     
    __declspec(dllimport) FILE* __cdecl _fdopen(
            int         _FileHandle,
          char const* _Mode
        );

     
    __declspec(dllimport) int __cdecl feof(
          FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl ferror(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl fflush(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl fgetc(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fgetchar(void);

     
    
    __declspec(dllimport) int __cdecl fgetpos(
          FILE*   _Stream,
            fpos_t* _Position
        );

     
    
    __declspec(dllimport) char* __cdecl fgets(
          char* _Buffer,
                               int   _MaxCount,
                            FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl _fileno(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _flushall(void);

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "fopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) FILE* __cdecl fopen(
          char const* _FileName,
          char const* _Mode
        );


     
    
    __declspec(dllimport) int __cdecl fputc(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fputchar(
          int _Character
        );

     
    
    __declspec(dllimport) int __cdecl fputs(
           char const* _Buffer,
          FILE*       _Stream
        );

    
    __declspec(dllimport) size_t __cdecl fread(
          void*  _Buffer,
                                                      size_t _ElementSize,
                                                      size_t _ElementCount,
                                                   FILE*  _Stream
        );

     
      __declspec(deprecated("This function or variable may be unsafe. Consider using " "freopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) FILE* __cdecl freopen(
           char const* _FileName,
           char const* _Mode,
          FILE*       _Stream
        );

     
    __declspec(dllimport) FILE* __cdecl _fsopen(
          char const* _FileName,
          char const* _Mode,
            int         _ShFlag
        );

     
    
    __declspec(dllimport) int __cdecl fsetpos(
          FILE*         _Stream,
             fpos_t const* _Position
        );

     
    
    __declspec(dllimport) int __cdecl fseek(
          FILE* _Stream,
             long  _Offset,
             int   _Origin
        );

     
    
    __declspec(dllimport) int __cdecl _fseeki64(
          FILE*   _Stream,
             __int64 _Offset,
             int     _Origin
        );

     
     
    __declspec(dllimport) long __cdecl ftell(
          FILE* _Stream
        );

     
     
    __declspec(dllimport) __int64 __cdecl _ftelli64(
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl fwrite(
          void const* _Buffer,
                                                    size_t      _ElementSize,
                                                    size_t      _ElementCount,
                                                 FILE*       _Stream
        );

     
     
    __declspec(dllimport) int __cdecl getc(
          FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl getchar(void);

     
    __declspec(dllimport) int __cdecl _getmaxstdio(void);

    extern "C++" { template <size_t _Size> inline char* __cdecl gets_s(char (&_Buffer)[_Size]) throw() { return gets_s(_Buffer, _Size); } }

     
    __declspec(dllimport) int __cdecl _getw(
          FILE* _Stream
        );

    __declspec(dllimport) void __cdecl perror(
          char const* _ErrorMessage
        );

    

         
        
        __declspec(dllimport) int __cdecl _pclose(
              FILE* _Stream
            );

         
        __declspec(dllimport) FILE* __cdecl _popen(
              char const* _Command,
              char const* _Mode
            );

    

     
    
    __declspec(dllimport) int __cdecl putc(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl putchar(
          int _Character
        );

    
    __declspec(dllimport) int __cdecl puts(
          char const* _Buffer
        );

     
    
    __declspec(dllimport) int __cdecl _putw(
             int   _Word,
          FILE* _Stream
        );

    __declspec(dllimport) int __cdecl remove(
          char const* _FileName
        );

     
    __declspec(dllimport) int __cdecl rename(
          char const* _OldFileName,
          char const* _NewFileName
        );

    __declspec(dllimport) int __cdecl _unlink(
          char const* _FileName
        );

    

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_unlink" ". See online help for details."))
        __declspec(dllimport) int __cdecl unlink(
              char const* _FileName
            );

    

    __declspec(dllimport) void __cdecl rewind(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _rmtmp(void);

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "setvbuf" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) void __cdecl setbuf(
                                                      FILE* _Stream,
            char* _Buffer
        );

    
    __declspec(dllimport) int __cdecl _setmaxstdio(
          int _Maximum
        );

     
    
    __declspec(dllimport) int __cdecl setvbuf(
                               FILE*  _Stream,
            char*  _Buffer,
                                  int    _Mode,
                                  size_t _Size
        );

    




     
    __declspec(dllimport) __declspec(allocator) char* __cdecl _tempnam(
          char const* _DirectoryName,
          char const* _FilePrefix
        );

    



      __declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpfile_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) FILE* __cdecl tmpfile(void);

    extern "C++" { template <size_t _Size> inline   errno_t __cdecl tmpnam_s( char (&_Buffer)[_Size]) throw() { return tmpnam_s(_Buffer, _Size); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport)  char* __cdecl tmpnam(  char *_Buffer);

     
    
    __declspec(dllimport) int __cdecl ungetc(
             int   _Character,
          FILE* _Stream
        );



    
    
    
    
    
    __declspec(dllimport) void __cdecl _lock_file(
          FILE* _Stream
        );

    __declspec(dllimport) void __cdecl _unlock_file(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fclose_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fflush_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fgetc_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fputc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl _fread_nolock(
          void*  _Buffer,
                                                      size_t _ElementSize,
                                                      size_t _ElementCount,
                                                   FILE*  _Stream
        );

    
     
    __declspec(dllimport) size_t __cdecl _fread_nolock_s(
          void*  _Buffer,
                              size_t _BufferSize,
                                                                      size_t _ElementSize,
                                                                      size_t _ElementCount,
                                                                   FILE*  _Stream
        );

    
    __declspec(dllimport) int __cdecl _fseek_nolock(
          FILE* _Stream,
             long  _Offset,
             int   _Origin
        );

    
    __declspec(dllimport) int __cdecl _fseeki64_nolock(
          FILE*   _Stream,
             __int64 _Offset,
             int     _Origin
        );

     
    __declspec(dllimport) long __cdecl _ftell_nolock(
          FILE* _Stream
        );

     
    __declspec(dllimport) __int64 __cdecl _ftelli64_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl _fwrite_nolock(
          void const* _Buffer,
                                                    size_t      _ElementSize,
                                                    size_t      _ElementCount,
                                                 FILE*       _Stream
        );

    
    __declspec(dllimport) int __cdecl _getc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _putc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _ungetc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    
    
    



    


















    __declspec(dllimport) int* __cdecl __p__commode(void);

    


        
    



    
    



    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfprintf(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    __declspec(dllimport) int __cdecl __stdio_common_vfprintf_s(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vfprintf_p(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __inline int __cdecl _vfprintf_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    


    {
        return __stdio_common_vfprintf((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vfprintf(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vfprintf_l(_Stream, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vfprintf_s_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    


    {
        return __stdio_common_vfprintf_s((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vfprintf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
                                          va_list           _ArgList
            )
    


        {
            return _vfprintf_s_l(_Stream, _Format, 0, _ArgList);
        }
    

    

    
    __inline int __cdecl _vfprintf_p_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    


    {
        return __stdio_common_vfprintf_p((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl _vfprintf_p(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vfprintf_p_l(_Stream, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    


    {
        return _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vprintf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vfprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vprintf_s_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    


    {
        return _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vprintf_s(
                char const* const _Format,
                                          va_list           _ArgList
            )
    


        {
            return _vfprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        }
    

    

    
    __inline int __cdecl _vprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    


    {
        return _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl _vprintf_p(
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vfprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _fprintf_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfprintf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl fprintf(
                                FILE*       const _Stream,
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfprintf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    __declspec(dllimport) int __cdecl _set_printf_count_output(
          int _Value
        );

    __declspec(dllimport) int __cdecl _get_printf_count_output(void);

    
    __inline int __cdecl _fprintf_s_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfprintf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl fprintf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfprintf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    
    __inline int __cdecl _fprintf_p_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfprintf_p_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _fprintf_p(
                                FILE*       const _Stream,
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfprintf_p_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _printf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl printf(
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _printf_s_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl printf_s(
                char const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    
    __inline int __cdecl _printf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _printf_p(
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    


    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfscanf(
                                            unsigned __int64 _Options,
                                         FILE*            _Stream,
            char const*      _Format,
                                        _locale_t        _Locale,
                                               va_list          _Arglist
        );

    
    __inline int __cdecl _vfscanf_l(
                                FILE*       const _Stream,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    


    {
        return __stdio_common_vfscanf(
            (*__local_stdio_scanf_options ()),
            _Stream, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vfscanf(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vfscanf_l(_Stream, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vfscanf_s_l(
                                FILE*       const _Stream,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    


    {
        return __stdio_common_vfscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Stream, _Format, _Locale, _ArgList);
    }
    


    

        
        __inline int __cdecl vfscanf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
                                          va_list           _ArgList
            )
    


        {
            return _vfscanf_s_l(_Stream, _Format, 0, _ArgList);
        }
    

    

    
    __inline int __cdecl _vscanf_l(
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    


    {
        return _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vscanf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vfscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vscanf_s_l(
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    


    {
        return _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    

    

        
        __inline int __cdecl vscanf_s(
                char const* const _Format,
                                          va_list           _ArgList
            )
    


        {
            return _vfscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        }
    

    

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _fscanf_l(
                                         FILE*       const _Stream,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfscanf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "fscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl fscanf(
                               FILE*       const _Stream,
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfscanf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _fscanf_s_l(
                                           FILE*       const _Stream,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfscanf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl fscanf_s(
                                     FILE*       const _Stream,
                char const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfscanf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_scanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _scanf_l(
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "scanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl scanf(
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vfscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _scanf_s_l(
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl scanf_s(
                char const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vfscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    



    
    
    
    
    
     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf(
                                             unsigned __int64 _Options,
                 char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf_s(
                                             unsigned __int64 _Options,
                     char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsnprintf_s(
                                             unsigned __int64 _Options,
                 char*            _Buffer,
                                             size_t           _BufferCount,
                                             size_t           _MaxCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf_p(
                                             unsigned __int64 _Options,
                     char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _vsnprintf_l(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                 char const* const _Format,
                                              _locale_t   const _Locale,
                                                     va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vsnprintf(
            char*       const _Buffer,
                                                 size_t      const _BufferCount,
                          char const* const _Format,
                                                    va_list           _ArgList
        )
    


    {
        return _vsnprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

    










     
    
    __inline int __cdecl vsnprintf(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
                                                          va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _vsprintf_l(
           char*       const _Buffer,
                                    char const* const _Format,
                                  _locale_t   const _Locale,
                                         va_list           _ArgList
        )
    


    {
        return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl vsprintf(
           char*       const _Buffer,
               char const* const _Format,
                                         va_list           _ArgList
        )
    


    {
        return _vsnprintf_l(_Buffer, (size_t)-1, _Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl _vsprintf_s_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
                                                      va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

    

         
        
        __inline int __cdecl vsprintf_s(
               char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
                                                          va_list           _ArgList
            )
    


        {
            return _vsprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        }
    

        extern "C++" { template <size_t _Size> inline   int __cdecl vsprintf_s( char (&_Buffer)[_Size],     char const* _Format, va_list _ArgList) throw() { return vsprintf_s(_Buffer, _Size, _Format, _ArgList); } }

    

     
    
    __inline int __cdecl _vsprintf_p_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
                                                      va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf_p(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vsprintf_p(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                            char const* const _Format,
                                                      va_list           _ArgList
        )
    


    {
        return _vsprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

     
    
    __inline int __cdecl _vsnprintf_s_l(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                      char const* const _Format,
                                                   _locale_t   const _Locale,
                                                          va_list          _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsnprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vsnprintf_s(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                                char const* const _Format,
                                                          va_list           _ArgList
        )
    


    {
        return _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
    }
    

    extern "C++" { template <size_t _Size> inline   int __cdecl _vsnprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, va_list _ArgList) throw() { return _vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }

    

         
        
        __inline int __cdecl vsnprintf_s(
               char*       const _Buffer,
                                                           size_t      const _BufferCount,
                                                           size_t      const _MaxCount,
                                    char const* const _Format,
                                                              va_list           _ArgList
            )
    


        {
            return _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        }
    

        extern "C++" { template <size_t _Size> inline   int __cdecl vsnprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, va_list _ArgList) throw() { return vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }

    

    
    __inline int __cdecl _vscprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    __inline int __cdecl _vscprintf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vscprintf_l(_Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vscprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf_p(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    __inline int __cdecl _vscprintf_p(
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vscprintf_p_l(_Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vsnprintf_c_l(
                   char*       const _Buffer,
                                             size_t      const _BufferCount,
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    


    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    

     
    
    __inline int __cdecl _vsnprintf_c(
          char*       const _Buffer,
                                    size_t      const _BufferCount,
             char const* const _Format,
                                       va_list           _ArgList
        )
    


    {
        return _vsnprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _sprintf_l(
                  char*       const _Buffer,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));

        _Result = _vsprintf_l(_Buffer, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl sprintf(
           char*       const _Buffer,
               char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));

        _Result = _vsprintf_l(_Buffer, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "sprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))   int __cdecl sprintf(  char *_Buffer,  char const* _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))   int __cdecl vsprintf(  char *_Buffer,  char const* _Format, va_list _Args);

     
    
    __inline int __cdecl _sprintf_s_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

         
        
        __inline int __cdecl sprintf_s(
               char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
            _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    extern "C++" { template <size_t _Size> inline   int __cdecl sprintf_s( char (&_Buffer)[_Size],     char const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format))))); return vsprintf_s(_Buffer, _Size, _Format, _ArgList); } }

     
    
    __inline int __cdecl _sprintf_p_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsprintf_p_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _sprintf_p(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _snprintf_l(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                 char const* const _Format,
                                              _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));

        _Result = _vsnprintf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    










     
    
    __inline int __cdecl snprintf(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snprintf(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                           char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))    int __cdecl _snprintf(    char *_Buffer,   size_t _BufferCount,     char const* _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))    int __cdecl _vsnprintf(    char *_Buffer,   size_t _BufferCount,     char const* _Format, va_list _Args);

     
    
    __inline int __cdecl _snprintf_c_l(
                   char*       const _Buffer,
                                             size_t      const _BufferCount,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsnprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snprintf_c(
          char*       const _Buffer,
                                    size_t      const _BufferCount,
             char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsnprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snprintf_s_l(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                      char const* const _Format,
                                                   _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    
    __inline int __cdecl _snprintf_s(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                                char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    extern "C++" { template <size_t _Size> inline   int __cdecl _snprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format))))); return _vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }

    
    __inline int __cdecl _scprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vscprintf_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    __inline int __cdecl _scprintf(
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vscprintf_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _scprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vscprintf_p_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     
    __inline int __cdecl _scprintf_p(
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vscprintf_p(_Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vsscanf(
                                            unsigned __int64 _Options,
                  char const*      _Buffer,
                                            size_t           _BufferCount,
            char const*      _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

    
    __inline int __cdecl _vsscanf_l(
                                 char const* const _Buffer,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    


    {
        return __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    

    
    __inline int __cdecl vsscanf(
                                 char const* const _Buffer,
            char const* const _Format,
                                      va_list           _ArgList
        )
    


    {
        return _vsscanf_l(_Buffer, _Format, 0, _ArgList);
    }
    

    
    __inline int __cdecl _vsscanf_s_l(
                                 char const* const _Buffer,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    


    {
        return __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    

    

        #pragma warning(push)
        #pragma warning(disable: 6530) 

        
        __inline int __cdecl vsscanf_s(
                                     char const* const _Buffer,
                char const* const _Format,
                                          va_list           _ArgList
            )
    


        {
            return _vsscanf_s_l(_Buffer, _Format, 0, _ArgList);
        }
    

        extern "C++" { template <size_t _Size> inline int __cdecl vsscanf_s(  char const (&_Buffer)[_Size],     char const* _Format, va_list _ArgList) throw() { return vsscanf_s(_Buffer, _Size, _Format, _ArgList); } }

        #pragma warning(pop)

    

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _sscanf_l(
                                          char const* const _Buffer,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsscanf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

      __declspec(deprecated("This function or variable may be unsafe. Consider using " "sscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl sscanf(
                                char const* const _Buffer,
            char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));
        _Result = _vsscanf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _sscanf_s_l(
                                            char const* const _Buffer,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));
        _Result = _vsscanf_s_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    

        
        __inline int __cdecl sscanf_s(
                                      char const* const _Buffer,
                char const* const _Format,
            ...)
    


        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));

            _Result = vsscanf_s(_Buffer, _Format, _ArgList);

            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    

    

    #pragma warning(push)
    #pragma warning(disable: 6530) 

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _snscanf_l(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

     __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __inline int __cdecl _snscanf(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
                      char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    


    
    __inline int __cdecl _snscanf_s_l(
              char const* const _Buffer,
                                              size_t      const _BufferCount,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Locale)>(), ((void)(__va_start(&_ArgList, _Locale)))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    
    __inline int __cdecl _snscanf_s(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
                    char const* const _Format,
        ...)
    


    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_assert_va_start_is_not_reference<decltype(_Format)>(), ((void)(__va_start(&_ArgList, _Format)))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    

    #pragma warning(pop)

    





    
    
    
    
    
    

        

        




        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_tempnam" ". See online help for details."))
        __declspec(dllimport) char* __cdecl tempnam(
              char const* _Directory,
              char const* _FilePrefix
            );

        



         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fcloseall" ". See online help for details.")) __declspec(dllimport) int   __cdecl fcloseall(void);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fdopen" ". See online help for details."))    __declspec(dllimport) FILE* __cdecl fdopen(  int _FileHandle,   char const* _Format);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fgetchar" ". See online help for details."))  __declspec(dllimport) int   __cdecl fgetchar(void);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fileno" ". See online help for details."))    __declspec(dllimport) int   __cdecl fileno(  FILE* _Stream);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_flushall" ". See online help for details."))  __declspec(dllimport) int   __cdecl flushall(void);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fputchar" ". See online help for details."))  __declspec(dllimport) int   __cdecl fputchar(  int _Ch);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_getw" ". See online help for details."))      __declspec(dllimport) int   __cdecl getw(  FILE* _Stream);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_putw" ". See online help for details."))      __declspec(dllimport) int   __cdecl putw(  int _Ch,   FILE* _Stream);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_rmtmp" ". See online help for details."))     __declspec(dllimport) int   __cdecl rmtmp(void);

    




} __pragma(pack(pop))

#pragma warning(pop) 
























































































\ \ \ public: \ using ShaderMetaType = FMeshMaterialShaderType; \ using ShaderMapType = FMeshMaterialShaderMap; \ \ static  ShaderMetaType StaticType; \ \ \ static FShader* ConstructSerializedInstance() { return new TMobileBasePassVS(); } \ static FShader* ConstructCompiledInstance(const typename FShader::CompiledShaderInitializerType& Initializer) \ { return new TMobileBasePassVS(static_cast<const typename ShaderMetaType::CompiledShaderInitializerType&>(Initializer)); }\ static void ModifyCompilationEnvironmentImpl(const FShaderPermutationParameters& Parameters, FShaderCompilerEnvironment& OutEnvironment) \ { \ const typename TMobileBasePassVS::FPermutationDomain PermutationVector(Parameters.PermutationId); \ PermutationVector.ModifyCompilationEnvironment(OutEnvironment); \ TMobileBasePassVS::ModifyCompilationEnvironment(static_cast<const typename TMobileBasePassVS::FPermutationParameters&>(Parameters), OutEnvironment); \ } \ static bool ShouldCompilePermutationImpl(const FShaderPermutationParameters& Parameters) \ { return TMobileBasePassVS::ShouldCompilePermutation(static_cast<const typename TMobileBasePassVS::FPermutationParameters&>(Parameters)); }; \ \ private: using InternalBaseType = typename TGetBaseTypeHelper< TMobileBasePassVS>::Type; \ template<typename InternalType> static void InternalInitializeBases(FTypeLayoutDesc& TypeDesc) { TInitializeBaseHelper<InternalType, InternalBaseType>::Initialize(TypeDesc); }; \ public:  static FTypeLayoutDesc& StaticGetTypeLayout(); \ public:  const FTypeLayoutDesc& GetTypeLayout() const ; \ \ static const int CounterBase = 0; \ public: using DerivedType =  TMobileBasePassVS; \ static const ETypeLayoutInterface::Type InterfaceType = ETypeLayoutInterface::NonVirtual; \ template<int Counter> struct InternalLinkType { ; static __forceinline void Initialize(FTypeLayoutDesc& TypeDesc) {} }; \ public:































































































\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32 > TMobileBasePassVSFNoLightMapPolicyLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64 > TMobileBasePassVSFNoLightMapPolicyHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFNoLightMapPolicyLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFNoLightMapPolicyLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::ShaderMetaType \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::StaticType( \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFNoLightMapPolicyLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFNoLightMapPolicyLDRGamma32), \ \ TMobileBasePassVSFNoLightMapPolicyLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFNoLightMapPolicyHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFNoLightMapPolicyHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::ShaderMetaType \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::StaticType( \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFNoLightMapPolicyHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFNoLightMapPolicyHDRLinear64), \ \ TMobileBasePassVSFNoLightMapPolicyHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSFNoLightMapPolicy0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSFNoLightMapPolicy0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32), \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64), \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSFNoLightMapPolicy1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSFNoLightMapPolicy1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32), \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64), \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSFNoLightMapPolicy2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSFNoLightMapPolicy2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32), \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64), \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSFNoLightMapPolicy3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSFNoLightMapPolicy3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32), \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64), \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSFNoLightMapPolicy4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSFNoLightMapPolicy4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32), \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64), \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight), \ \ TMobileBasePassPSFNoLightMapPolicy4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_NO_LIGHTMAP>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32), \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64), \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSFNoLightMapPolicyINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;
\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32 > TMobileBasePassVSTLightMapPolicyLQLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64 > TMobileBasePassVSTLightMapPolicyLQHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSTLightMapPolicyLQLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSTLightMapPolicyLQLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::ShaderMetaType \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::StaticType( \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSTLightMapPolicyLQLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSTLightMapPolicyLQLDRGamma32), \ \ TMobileBasePassVSTLightMapPolicyLQLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSTLightMapPolicyLQHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSTLightMapPolicyLQHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::ShaderMetaType \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::StaticType( \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSTLightMapPolicyLQHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSTLightMapPolicyLQHDRLinear64), \ \ TMobileBasePassVSTLightMapPolicyLQHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32), \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64), \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32), \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64), \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32), \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64), \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32), \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64), \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32), \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64), \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQ4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_LQ_LIGHTMAP>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32), \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64), \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSTLightMapPolicyLQINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;
\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32 > TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64 > TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::ShaderMetaType \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::StaticType( \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32), \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::ShaderMetaType \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::StaticType( \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64), \ \ TMobileBasePassVSFCachedPointIndirectLightingPolicyHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicy4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_CACHED_POINT_INDIRECT_LIGHTING>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSFCachedPointIndirectLightingPolicyINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;
\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32 > TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64 > TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::ShaderMetaType \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::StaticType( \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32), \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::ShaderMetaType \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::StaticType( \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64), \ \ TMobileBasePassVSFMobileDistanceFieldShadowsAndLQLightMapPolicyHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicy4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDistanceFieldShadowsAndLQLightMapPolicyINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;
\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32 > TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64 > TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::ShaderMetaType \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::StaticType( \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32), \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::ShaderMetaType \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::StaticType( \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64), \ \ TMobileBasePassVSFMobileDirectionalLightAndSHIndirectPolicyHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSFMobileDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;
\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32 > TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64 > TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::ShaderMetaType \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::StaticType( \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32), \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::ShaderMetaType \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::StaticType( \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64), \ \ TMobileBasePassVSFMobileMovableDirectionalLightAndSHIndirectPolicyHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicy4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightAndSHIndirectPolicyINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;
\ \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32 > TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32; \ typedef TMobileBasePassVS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64 > TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::ShaderMetaType \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::StaticType( \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32), \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::ShaderMetaType \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::StaticType( \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassVertexShader.usf"), \ \ TEXT("Main"), \ \ SF_Vertex \, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64), \ \ TMobileBasePassVSFMobileMovableDirectionalLightWithLightmapPolicyHDRLinear64::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, false, 0 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, false, 0 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, true, 0 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, true, 0 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy0HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, false, 1 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, false, 1 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, true, 1 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, true, 1 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy1HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, false, 2 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, false, 2 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, true, 2 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, true, 2 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy2HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, false, 3 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, false, 3 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, true, 3 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, true, 3 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy3HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, false, 4 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, false, 4 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, true, 4 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, true, 4 > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4LDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicy4HDRLinear64Skylight::GetRootParametersMetadata() \ );;; \ \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, false, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, false, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, LDR_GAMMA_32, true, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight; \ typedef TMobileBasePassPS< TUniformLightMapPolicy<LMP_MOBILE_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP>, HDR_LINEAR_64, true, INT32_MAX > TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXLDRGamma32Skylight::GetRootParametersMetadata() \ );;; \ \ \ \ \  \ template<> FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout() { \ static_assert(TValidateInterfaceHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Value, "Invalid interface for " "\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight"); \ alignas(FTypeLayoutDesc) static uint8 TypeBuffer[sizeof(FTypeLayoutDesc)] = { 0 }; \ FTypeLayoutDesc& TypeDesc = *(FTypeLayoutDesc*)TypeBuffer; \ if (!TypeDesc.IsInitialized) { \ TypeDesc.IsInitialized = true; \ TypeDesc.Name = TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight"); \ TypeDesc.WriteFrozenMemoryImageFunc = TGetFreezeImageHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight>::Do(); \ TypeDesc.UnfrozenCopyFunc = &Freeze::DefaultUnfrozenCopy; \ TypeDesc.AppendHashFunc = &Freeze::DefaultAppendHash; \ TypeDesc.GetTargetAlignmentFunc = &Freeze::DefaultGetTargetAlignment; \ TypeDesc.ToStringFunc = &Freeze::DefaultToString; \ TypeDesc.Size = sizeof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Alignment = alignof( \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight); \ TypeDesc.Interface = InterfaceType; \ TypeDesc.SizeFromFields = ~0u; \ TAssignDestroyHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight, TIsTriviallyDestructible< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight>::Value>::Do(TypeDesc); \ TypeDesc.GetDefaultObjectFunc = &TGetDefaultObjectHelper< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight, InterfaceType>::Do; \ InternalLinkType<1>::Initialize(TypeDesc); \ InternalInitializeBases< \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight>(TypeDesc); \ FTypeLayoutDesc::Initialize(TypeDesc); \ } \ return TypeDesc; }; \  \ template<> const FTypeLayoutDesc&  \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::GetTypeLayout() const { return StaticGetTypeLayout(); }; \ \ template<> \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::ShaderMetaType \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::StaticType( \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::StaticGetTypeLayout(), \ TEXT("\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight"), \ \ TEXT("/Engine/Private/MobileBasePassPixelShader.usf"), \ \ TEXT("Main"), \ \ SF_Pixel \, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::FPermutationDomain::PermutationCount, \ \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::ConstructSerializedInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::ConstructCompiledInstance, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::ModifyCompilationEnvironmentImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::ShouldCompilePermutationImpl, \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::ValidateCompiledResult, \ sizeof(\ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight), \ \ TMobileBasePassPSFMobileMovableDirectionalLightWithLightmapPolicyINT32_MAXHDRLinear64Skylight::GetRootParametersMetadata() \ );;;;


















































\ \ \ zzMemberIdDirectionalLightDirection; \ public: \ TShaderParameterTypeInfo<FVector>::TAlignedType DirectionalLightDirection ; \ static_assert(TShaderParameterTypeInfo<FVector>::BaseType != UBMT_INVALID, "Invalid type " "FVector" " of member " "DirectionalLightDirection" "."); \ private: \ struct zzNextMemberIdDirectionalLightDirection { enum { HasDeclaredResource = zzMemberIdDirectionalLightDirection::HasDeclaredResource || !TShaderParameterTypeInfo<FVector>::bIsStoredInConstantBuffer }; }; \ static zzFuncPtr zzAppendMemberGetPrev(zzNextMemberIdDirectionalLightDirection, TArray<FShaderParametersMetadata::FMember>* Members) \ { \ static_assert(TShaderParameterTypeInfo<FVector>::bIsStoredInConstantBuffer || TIsArrayOrRefOfType<decltype(TEXT("")), TCHAR>::Value, "No shader type for " "DirectionalLightDirection" "."); \ static_assert(\ (STRUCT_OFFSET(zzTThisStruct, DirectionalLightDirection) & (TShaderParameterTypeInfo<FVector>::Alignment - 1)) == 0, \ "Misaligned uniform buffer struct member " "DirectionalLightDirection" "."); \ Members->Add(FShaderParametersMetadata::FMember( \ TEXT("DirectionalLightDirection"), \ TEXT(""), \ STRUCT_OFFSET(zzTThisStruct,DirectionalLightDirection), \ EUniformBufferBaseType(TShaderParameterTypeInfo<FVector>::BaseType), \ EShaderPrecisionModifier::Float, \ TShaderParameterTypeInfo<FVector>::NumRows, \ TShaderParameterTypeInfo<FVector>::NumColumns, \ TShaderParameterTypeInfo<FVector>::NumElements, \ TShaderParameterTypeInfo<FVector>::GetStructMetadata() \ )); \ zzFuncPtr(*PrevFunc)(zzMemberIdDirectionalLightDirection, TArray<FShaderParametersMetadata::FMember>*); \ PrevFunc = zzAppendMemberGetPrev; \ return (zzFuncPtr)PrevFunc; \ } \ typedef zzNextMemberIdDirectionalLightDirection \\
\ \ \ zzMemberIdDirectionalLightColor; \ public: \ TShaderParameterTypeInfo<FVector>::TAlignedType DirectionalLightColor ; \ static_assert(TShaderParameterTypeInfo<FVector>::BaseType != UBMT_INVALID, "Invalid type " "FVector" " of member " "DirectionalLightColor" "."); \ private: \ struct zzNextMemberIdDirectionalLightColor { enum { HasDeclaredResource = zzMemberIdDirectionalLightColor::HasDeclaredResource || !TShaderParameterTypeInfo<FVector>::bIsStoredInConstantBuffer }; }; \ static zzFuncPtr zzAppendMemberGetPrev(zzNextMemberIdDirectionalLightColor, TArray<FShaderParametersMetadata::FMember>* Members) \ { \ static_assert(TShaderParameterTypeInfo<FVector>::bIsStoredInConstantBuffer || TIsArrayOrRefOfType<decltype(TEXT("")), TCHAR>::Value, "No shader type for " "DirectionalLightColor" "."); \ static_assert(\ (STRUCT_OFFSET(zzTThisStruct, DirectionalLightColor) & (TShaderParameterTypeInfo<FVector>::Alignment - 1)) == 0, \ "Misaligned uniform buffer struct member " "DirectionalLightColor" "."); \ Members->Add(FShaderParametersMetadata::FMember( \ TEXT("DirectionalLightColor"), \ TEXT(""), \ STRUCT_OFFSET(zzTThisStruct,DirectionalLightColor), \ EUniformBufferBaseType(TShaderParameterTypeInfo<FVector>::BaseType), \ EShaderPrecisionModifier::Float, \ TShaderParameterTypeInfo<FVector>::NumRows, \ TShaderParameterTypeInfo<FVector>::NumColumns, \ TShaderParameterTypeInfo<FVector>::NumElements, \ TShaderParameterTypeInfo<FVector>::GetStructMetadata() \ )); \ zzFuncPtr(*PrevFunc)(zzMemberIdDirectionalLightColor, TArray<FShaderParametersMetadata::FMember>*); \ PrevFunc = zzAppendMemberGetPrev; \ return (zzFuncPtr)PrevFunc; \ } \ typedef zzNextMemberIdDirectionalLightColor \\


int main() {
    int c = 3, d = 4;
    int sum = c+d;
    printf("sum=%d", sum);
    int data[] = { 5,6,8,9,6,4 };
    for (int i = 0; i < sizeof(data)/sizeof(data[0]); i++)
    {
        printf("%d\\n", data[i]);
    }
    return 0;
}
