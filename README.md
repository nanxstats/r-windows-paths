
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r-windows-paths

<a href="https://nanx.me/blog/post/r-windows-paths/">
<img src="images/banner.png" alt="r-windows-paths"> </a>

<p align="center">
  <a href="#example-versions"><strong>Example versions</strong></a> ·
  <a href="#configure-and-verify"><strong>Configure and
verify</strong></a>
</p>

<p align="center">
  <a href="#r"><strong>R</strong></a> ·
  <a href="#rtools"><strong>Rtools</strong></a> ·
  <a href="#tinytex"><strong>TinyTeX</strong></a> ·
  <a href="#miktex"><strong>MiKTeX</strong></a> ·
  <a href="#pandoc"><strong>Pandoc</strong></a> ·
  <a href="#quarto"><strong>Quarto</strong></a> ·
  <a href="#git"><strong>Git</strong></a>
</p>

Essential R command-line tool paths on Windows. This information can
help setting up the `PATH` environment variable for seamless
command-line access.

## Example versions

Some of the paths below are specific to the installed software version.
We use these software version examples:

- R 4.5.1
- Rtools45
- RStudio Desktop 2025.05.1+513

## Key paths

### R

`R.exe` and `Rscript.exe` for running `R CMD build` and `R CMD check`.

R release version 4.5.1:

``` batchfile
C:\Program Files\R\R-4.5.1\bin
```

R-devel:

``` batchfile
C:\Program Files\R\R-devel\bin
```

### Rtools

C/C++/Fortran toolchain for building R and R packages from source.

Contains `gcc`, `g++`, `gfortran`:

``` batchfile
C:\rtools45\x86_64-w64-mingw32.static.posix\bin
```

Contains Texinfo (`texi2dvi`, `texi2pdf`) required by `R CMD check`, and
GNU Make (`make`) required for building R from source:

``` batchfile
C:\rtools45\usr\bin
```

### TinyTeX

TeX distribution binaries for LaTeX support.

Contains `pdflatex` required by `R CMD check` and for building R from
source.

``` batchfile
C:\Users\%USERNAME%\AppData\Roaming\TinyTeX\bin\windows
```

### MiKTeX

TeX distribution binaries for LaTeX support.

Contains `pdflatex` required by `R CMD check` and for building R from
source.

MiKTeX installed via `choco install miktex` or standalone installer (all
users):

``` batchfile
C:\Program Files\MiKTeX\miktex\bin\x64
```

MiKTeX installed via standalone installer (current user):

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Programs\MiKTeX\miktex\bin\x64
```

### Pandoc

pandoc installed via `choco install pandoc` or standalone installer:

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Pandoc
```

pandoc distributed with RStudio Desktop (installer):

``` batchfile
C:\Program Files\RStudio\resources\app\bin\quarto\bin\tools
```

pandoc distributed with RStudio Desktop (zip):

``` batchfile
C:\Users\%USERNAME%\RStudio-2025.05.1-513\resources\app\bin\quarto\bin\tools
```

pandoc distributed with Quarto installed via `choco install quarto`:

``` batchfile
C:\ProgramData\chocolatey\lib\quarto\tools\bin\tools
```

pandoc distributed with Quarto installed via Quarto standalone
installer:

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Programs\Quarto\bin\tools
```

### Quarto

Quarto installed via `choco install quarto`:

``` batchfile
C:\ProgramData\chocolatey\lib\quarto\tools\bin
```

Quarto installed via Quarto standalone installer:

``` batchfile
C:\Users\%USERNAME%\AppData\Local\Programs\Quarto\bin
```

Quarto distributed with RStudio Desktop (installer):

``` batchfile
C:\Program Files\RStudio\resources\app\bin\quarto\bin
```

Quarto distributed with RStudio Desktop (zip):

``` batchfile
C:\Users\%USERNAME%\RStudio-2025.05.1-513\resources\app\bin\quarto\bin
```

### Git

For interacting with Git repositories.

Git for Windows installed via `choco install git` or standalone
installer:

``` batchfile
C:\Program Files\Git\cmd
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
