$pdflatex = 'lualatex %O %S';
$pdf_mode = 4;      # LuaLaTeX
$latex_mode = 'lualatex';
$compiler_engine = 'lualatex';
$force_view = 'pdf';

$bibtex_engine = 'biber';

$makeindex = 'upmendex -g -s jssc_index.ist %O -o %D %S';
# $makeindex = 'upmendex %O -o %D %S';
$clean_ext = 'idx ind';

# sub makeindex {
#     # $root_filename は latexmk がコンパイル対象のファイル名から取得する変数
#     if (-e "$root_filename.idx") {
#         print "Running upmendex for $root_filename...\n";
#         # upmendex コマンド。$_[0]、$_[1]、$_[2] は $makeindex の %O, %D, %S に相当。
#         return system("upmendex -s jssc_index.ist -g $_[0] -o $_[1] $_[2]");
#     } else {
#         # .idx ファイルがない場合はスキップし、成功（0）を返す
#         print "Skipping upmendex: No .idx file found.\n";
#         return 0;
#     }
# }