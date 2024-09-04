# r-windows-paths

Essential R command-line tool paths on Windows.
This information can help setting up the `PATH` environment variable
for seamless command-line access.

## Contents

- [Example versions](#example-versions)
- [Key paths](#key-paths)
  - [R](#r)
  - [Rtools](#rtools)
  - [Pandoc](#pandoc)
  - [TinyTeX](#tinytex)
  - [Quarto](#quarto)
- [How to use](#how-to-use)

## Example versions

Some of the paths below are specific to the installed software version.
We use these software version examples:

- Rtools44
- RStudio Desktop 2024.04.2+764

## Key paths

### R

`R.exe` and `Rscript.exe`.

R release version x.y.z:

```powershell
C:\Program Files\R\R-x.y.z\bin
```

R-devel:

```powershell
C:\Program Files\R\R-devel\bin
```

### Rtools

C/C++/Fortran toolchain for building R and R packages from source.

Contains `gcc`, `g++`, `gfortran`:

```powershell
C:\rtools44\x86_64-w64-mingw32.static.posix\bin
```

Contains Texinfo (`texi2dvi`, `texi2pdf`) required by `R CMD check`:

```powershell
C:\rtools44\usr\bin
```

### Pandoc

pandoc installed via `choco install pandoc`:

```powershell
C:\Users\%USERNAME%\AppData\Local\Pandoc
```

pandoc distributed with RStudio Desktop:

```powershell
C:\Users\%USERNAME%\RStudio-2024.04.2-764\resources\app\bin\quarto\bin\tools
```

pandoc distributed with Quarto standalone installer:

```powershell
C:\Users\%USERNAME%\AppData\Local\Programs\Quarto\bin\tools
```

### TinyTeX

TeX distribution binaries for LaTeX support.
Contains `pdflatex` required by `R CMD check`.

```powershell
C:\Users\%USERNAME%\AppData\Roaming\TinyTeX\bin\windows
```

### Quarto

Quarto distributed with RStudio Desktop:

```powershell
C:\Users\%USERNAME%\RStudio-2024.04.2-764\resources\app\bin\quarto\bin
```

Quarto distributed via Quarto standalone installer:

```powershell
C:\Users\%USERNAME%\AppData\Local\Programs\Quarto\bin
```

## How to use

<!-- TODO: Add screenshots -->

1. Locate the paths on your system.
2. Add the relevant paths to your system's `PATH` environment variable.
3. Verify the setup by running the commands in command prompt.
