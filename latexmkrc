$pdf_mode = 5;
$xelatex = "xelatex -file-line-error -interaction=nonstopmode -synctex=1 %O %S";
$lualatex = "lualatex -file-line-error -interaction=nonstopmode -synctex=1 %O %S";
$clean_ext = "bcf run.xml synctex.gz hd";
$makeindex = "makeindex -s gind.ist -o %D %S";
