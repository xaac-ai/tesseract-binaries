@echo off
echo Testing Tesseract Installation...
echo.

REM Check if tesseract.exe exists
if not exist tesseract.exe (
    echo ERROR: tesseract.exe not found in current directory!
    echo Please make sure you've extracted the archive and are running this from the correct folder.
    pause
    exit /b 1
)

REM Check if tessdata directory exists
if not exist tessdata (
    echo ERROR: tessdata directory not found!
    echo Language models are missing.
    pause
    exit /b 1
)

REM Check if basic language models exist
if not exist tessdata\eng.traineddata (
    echo ERROR: English language model (eng.traineddata) not found!
    pause
    exit /b 1
)

echo Found tesseract.exe and language models.
echo.

REM Test basic functionality
echo Testing tesseract version...
tesseract.exe --version
echo.

echo Testing list of available languages...
tesseract.exe --list-langs
echo.

echo Installation test completed successfully!
echo You can now use tesseract.exe for OCR operations.
echo.
echo Example usage:
echo   tesseract.exe input.png output.txt
echo.
pause 