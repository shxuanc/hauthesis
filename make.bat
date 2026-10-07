@echo off
setlocal
chcp 65001 >nul
pushd "%~dp0"

set "PKG=hauthesis"
set "DOC=main"

set "T=%~1"
if "%T%"=="" set "T=all"

if /i "%T%"=="cls"    goto :cls
if /i "%T%"=="doc"    goto :doc
if /i "%T%"=="thesis" goto :thesis
if /i "%T%"=="all"    goto :all
if /i "%T%"=="clean"  goto :clean
goto :help

:cls
latex -interaction=nonstopmode -file-line-error %PKG%.ins || exit /b 1
exit /b 0

:doc
xelatex -synctex=1 -interaction=nonstopmode -file-line-error %PKG%.dtx || exit /b 1
makeindex -s gind.ist -o %PKG%.ind %PKG%.idx
xelatex -synctex=1 -interaction=nonstopmode -file-line-error %PKG%.dtx || exit /b 1
xelatex -synctex=1 -interaction=nonstopmode -file-line-error %PKG%.dtx || exit /b 1
exit /b 0

:thesis
xelatex -synctex=1 -interaction=nonstopmode -file-line-error %DOC% || exit /b 1
biber %DOC% || exit /b 1
xelatex -synctex=1 -interaction=nonstopmode -file-line-error %DOC% || exit /b 1
xelatex -synctex=1 -interaction=nonstopmode -file-line-error %DOC% || exit /b 1
exit /b 0

:all
call :cls || goto :fail
call :doc || goto :fail
call :thesis || goto :fail
goto :end

:clean
for /r %%f in (*.aux *.bcf *.bbl *.blg *.idx *.ilg *.ind *.log *.out *.run.xml *.toc *.xdv *.fls *.fdb_latexmk *.synctex.gz *.hd *.listing *.*.run.xml) do del /q "%%f" 2>nul
goto :end

:help
echo.
echo usage: make.bat [cls^|doc^|thesis^|all^|clean]
echo.
echo   cls      unpack %PKG%.ins
echo   doc      build %PKG%.pdf
echo   thesis   build %DOC%.pdf
echo   all      both (default)
echo   clean    remove aux files
echo.
goto :end

:fail
echo.
echo [FAILED]
if "%~1"=="" pause
popd
exit /b 1

:end
echo.
echo [DONE] %T%
if "%~1"=="" pause
popd
exit /b 0