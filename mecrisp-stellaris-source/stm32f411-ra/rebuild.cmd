setlocal
:: mingw from       http://sourceforge.net/projects/mingw/files/latest/download?source=files
:: stlink util from http://www.st.com/web/en/catalog/tools/PF258168
SET STLINK="C:\Program Files (x86)\STMicroelectronics\STM32 ST-LINK Utility\ST-LINK Utility\ST-LINK_CLI.exe"

SET P=E:\gcc\4.6_2012q4\bin
if exist %P%\nul set GNU_ARM_BIN=%P%
SET P=C:\gccarm\4.7_2014q2\bin
if exist %P%\nul set GNU_ARM_BIN=%P%
SET P=C:\app\gcc\4.9_2014q4\bin
if exist %P%\nul set GNU_ARM_BIN=%P%
SET P=C:\gccarm\6_2-2016q4-20161216-win32\bin
if exist %P%\nul set GNU_ARM_BIN=%P%
SET P=C:\app\gcc-arm\bin
if exist %P%\nul set GNU_ARM_BIN=%P%


set PATH=%GNU_ARM_BIN%;C:\msys64\usr\bin;%PATH%

make.exe clean
make.exe all

ping -n 3 127.0.0.1 > nul