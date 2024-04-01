@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=docs

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)


if "%1" == "gettext" goto gettext
if "%1" == "html" goto html

:gettext
%SPHINXBUILD% -M gettext %SOURCEDIR% "temp" %SPHINXOPTS% %O%
goto end

:html
rd /s /q docs
echo docs has been removed.

set SPHINXOPTS=-D language=en
%SPHINXBUILD% -b html %SOURCEDIR% "docs\en" %SPHINXOPTS% %O%
set SPHINXOPTS=-D language=zh
%SPHINXBUILD% -b html %SOURCEDIR% "docs\zh" %SPHINXOPTS% %O%
set SPHINXOPTS=-D language=ja
%SPHINXBUILD% -b html %SOURCEDIR% "docs\ja" %SPHINXOPTS% %O%


if exist docs\video rmdir /S /Q "docs\video"
xcopy /E /I "%SOURCEDIR%\_static\video" "docs\video"
if exist docs\image rmdir /S /Q "docs\image"
xcopy /E /I "%SOURCEDIR%\_static\image" "docs\image"

echo Deleting image and video folders from localization directories...
rmdir /S /Q "docs\en\_static\image"
rmdir /S /Q "docs\en\_static\video"
rmdir /S /Q "docs\zh\_static\image"
rmdir /S /Q "docs\zh\_static\video"
rmdir /S /Q "docs\ja\_static\image"
rmdir /S /Q "docs\ja\_static\video"

if not exist "docs\.nojekyll" echo.> docs\.nojekyll


:end
popd
