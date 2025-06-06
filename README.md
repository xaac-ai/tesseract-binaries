# Tesseract Binaries

Prebuilt **Tesseract OCR** binaries for **Windows**, **macOS**, and **Linux**.

This repository provides downloadable packages that include the `tesseract` CLI executable and required libraries, for easy integration into cross-platform applications.

## 🧱 Platforms

| Platform | Architecture | Archive Format | File Name                         |
| -------- | ------------ | -------------- | --------------------------------- |
| Windows  | x64          | `.tar.gz`      | `tesseract-windows-latest.tar.gz` |
| macOS    | x64 / arm64  | `.tar.gz`      | `tesseract-macos-latest.tar.gz`   |
| Linux    | x64          | `.tar.gz`      | `tesseract-ubuntu-latest.tar.gz`  |

> Note: These binaries are built from [tesseract-ocr/tesseract](https://github.com/tesseract-ocr/tesseract) with default English trained data support. Additional languages may be supported in the future.

## Creating a Release

```
git tag v5.5.1
git push origin v5.5.1
```

## 🚀 Installation

You can download and extract the binary for your platform:

### Linux/macOS

```bash
# Download and extract
curl -L https://github.com/xaac-ai/tesseract-binaries/releases/download/v5.3.0/tesseract-ubuntu-latest.tar.gz | tar xz

# Test installation
./tesseract --version
./tesseract --list-langs
```

### Windows

1. Download `tesseract-windows-latest.tar.gz` from the [releases page](https://github.com/xaac-ai/tesseract-binaries/releases)
2. Extract the archive using 7-Zip, WinRAR, or Windows built-in extraction
3. Run `test-installation.bat` to verify everything works
4. Use `tesseract.exe` for OCR operations

## 🔧 Usage

```bash
# Basic OCR (outputs to output.txt)
tesseract input.png output

# Specify output format
tesseract input.png output pdf

# OCR with specific language
tesseract input.png output -l eng
```

## 📋 What's Included

- `tesseract` executable (or `tesseract.exe` on Windows)
- Essential language models (`eng.traineddata`, `osd.traineddata`)
- All required runtime libraries
- Test script for Windows (`test-installation.bat`)
