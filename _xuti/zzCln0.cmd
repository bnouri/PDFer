::bnouri@gmail.com:  2022-08-06 v31
@echo off

set CurDir="%CD%"
cd /d %~dp0\..

:: A, B, C, D, E,
del /f/s/q *.aux *.bak *.blg *.bbl *.brf *.bcf *.bzip2 *.css *.dcl *.dvi

:: F, G, H, I, J,
del /f/s/q *.fls *.fdb* *.gz *.glg *.glo *.gls *.idx *.ilg *.ind *.ist 
 
:: K, L, M, N, O, 
del /f/s/q *.log *.lot *.lof *.nav *.out *.maf *.mtc? *.nlo

:: P, Q, R, S, T, 
del /f/s/q *.pdfsync *.ppl *.prj *.project.vim *.ps *.synctex* *.sav *.snm *.spl *.tmp *.toc *.tps *.tex~ *.tex.backup

:: U, V, W, X, Y, Z.
del /f/s/q  *.undo *.wim *.xml *.xz *.vrb
  
::del /f/s/q *.7z *.gzip *.tar *.zip
::del /f/s/q *.bat *.cmd


cd %CurDir%
echo.&&echo "Task was concluded!"
