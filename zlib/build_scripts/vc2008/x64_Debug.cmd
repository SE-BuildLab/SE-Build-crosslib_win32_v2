cd /d C:\git\SE-Build-crosslib_win32\zlib\src\build\vc2008\x64_Debug

set CYGWIN=nodosfilewarning
set PATH=C:\Perl\bin;C:\ADMIN\nasm-2.11.08;%PATH%

call "c:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" amd64

perl -i.bak -p -e "s/-MD/-MTd/g" win32\Makefile.msc
perl -i.bak -p -e "s/-O2/-Od/g" win32\Makefile.msc
perl -i.bak -p -e "s/-Zi/-Z7/g" win32\Makefile.msc


nmake /f win32\Makefile.msc clean
nmake /f win32\Makefile.msc



mkdir C:\git\SE-Build-crosslib_win32\zlib\output\Library\vc2008\x64_Debug

copy zlib.lib C:\git\SE-Build-crosslib_win32\zlib\output\Library\vc2008\x64_Debug\ /y

