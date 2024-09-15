
<!-- Render README.Rmd. Then open README.md and use VS Code (Markdown All in One) to create/update TOC. -->

# r-windows-paths

Essential R command-line tool paths on Windows. This information can
help setting up the `PATH` environment variable for seamless
command-line access.

## Contents

- [Example versions](#example-versions)
- [Key paths](#key-paths)
  - [R](#r)
  - [Rtools](#rtools)
  - [Pandoc](#pandoc)
  - [TinyTeX](#tinytex)
  - [Quarto](#quarto)
- [Configure and verify](#configure-and-verify)

## Example versions

Some of the paths below are specific to the installed software version.
We use these software version examples:

- R 4.4.1
- Rtools44
- RStudio Desktop 2024.04.2+764

## Key paths

### R

`R.exe` and `Rscript.exe`.

R release version 4.4.1:

``` batchfile
C:\Program Files\R\R-4.4.1\bin
```

R-devel:

``` batchfile
C:\Program Files\R\R-devel\bin
```

### Rtools

C/C++/Fortran toolchain for building R and R packages from source.

Contains `gcc`, `g++`, `gfortran`:

``` batchfile
C:\rtools44\x86_64-w64-mingw32.static.posix\bin
```

Contains Texinfo (`texi2dvi`, `texi2pdf`) required by `R CMD check`:

``` batchfile
C:\rtools44\usr\bin
```

### Pandoc

pandoc installed via `choco install pandoc`:

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Pandoc
```

pandoc distributed with RStudio Desktop:

``` batchfile
C:\Users\%USERNAME%\RStudio-2024.04.2-764\resources\app\bin\quarto\bin\tools
```

pandoc distributed with Quarto standalone installer:

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Programs\Quarto\bin\tools
```

### TinyTeX

TeX distribution binaries for LaTeX support. Contains `pdflatex`
required by `R CMD check`.

``` batchfile
C:\Users\%USERNAME%\AppData\Roaming\TinyTeX\bin\windows
```

### Quarto

Quarto installed via `choco install quarto`:

``` batchfile
C:\ProgramData\chocolatey\lib\quarto\tools\bin
```

Quarto distributed with RStudio Desktop:

``` batchfile
C:\Users\%USERNAME%\RStudio-2024.04.2-764\resources\app\bin\quarto\bin
```

Quarto distributed via Quarto standalone installer:

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Programs\Quarto\bin
```

## Configure and verify

1.  Locate the paths on your system.
    - Open File Explorer and navigate to the directories listed above.
    - Verify that the paths exist and contain the expected executables.
2.  Add relevant paths to your system’s `PATH` environment variable and
    verify the setup.
    - For a step-by-step guide with screenshots, see [how to set the
      `PATH` environment variable in Windows](path.md).

Now you should be able to use R and its associated tools from the CLI
without specifying full paths.
