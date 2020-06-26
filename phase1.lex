Last login: Tue Jun 23 19:39:10 on ttys000

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
xiaojundembp:~ xiaojunhe$ ssh xhe058@bolt.cs.ucr.edu
xhe058@bolt.cs.ucr.edu's password: 
Last login: Tue Jun 23 19:39:52 2020 from 047-034-146-080.res.spectrum.com
-bash: warning: setlocale: LC_CTYPE: cannot change locale (UTF-8): No such file or directory
~
xhe058@bolt $ ls
lab_1/
~
xhe058@bolt $ mkdir project1
~
xhe058@bolt $ ls
lab_1/  project1/
~
xhe058@bolt $ cd project1/
~/project1
xhe058@bolt $ git pull https://github.com/lzckira/CS152_Project_Phase1.git
fatal: Not a git repository (or any parent up to mount point /home/csmajs)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
~/project1
xhe058@bolt $ ls
~/project1
xhe058@bolt $ git pull https://github.com/lzckira/CS152_Project_Phase1.git
fatal: Not a git repository (or any parent up to mount point /home/csmajs)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
~/project1
xhe058@bolt $ git clone
You must specify a repository to clone.

usage: git clone [options] [--] <repo> [<dir>]

    -v, --verbose         be more verbose
    -q, --quiet           be more quiet
    --progress            force progress reporting
    -n, --no-checkout     don't create a checkout
    --bare                create a bare repository
    --mirror              create a mirror repository (implies bare)
    -l, --local           to clone from a local repository
    --no-hardlinks        don't use local hardlinks, always copy
    -s, --shared          setup as shared repository
    --recursive           initialize submodules in the clone
    --recurse-submodules  initialize submodules in the clone
    --template <template-directory>
                          directory from which templates will be used
    --reference <repo>    reference repository
    -o, --origin <name>   use <name> instead of 'origin' to track upstream
    -b, --branch <branch>
                          checkout <branch> instead of the remote's HEAD
    -u, --upload-pack <path>
                          path to git-upload-pack on the remote
    --depth <depth>       create a shallow clone of that depth
    --single-branch       clone only one branch, HEAD or --branch
    --separate-git-dir <gitdir>
                          separate git dir from working tree
    -c, --config <key=value>
                          set config inside the new repository

~/project1
xhe058@bolt $ git clone fatal: Not a git repository (or any parent up to mount point /home/csmajs)
-bash: syntax error near unexpected token `('
~/project1
xhe058@bolt $ Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
-bash: syntax error near unexpected token `('
~/project1
xhe058@bolt $ git clone fatal: Not a git repository (or any parent up to mount point /home/csmajs)
-bash: syntax error near unexpected token `('
~/project1
xhe058@bolt $ git clone https://github.com/lzckira/CS152_Project_Phase1.git
Cloning into 'CS152_Project_Phase1'...

(process:15927): Gtk-WARNING **: 21:22:03.815: Locale not supported by C library.
	Using the fallback 'C' locale.

(gnome-ssh-askpass:15927): Gtk-WARNING **: 21:22:03.817: cannot open display: 
error: unable to read askpass response from '/usr/libexec/openssh/gnome-ssh-askpass'
Username for 'https://github.com': AyinDJ

(process:16036): Gtk-WARNING **: 21:22:06.208: Locale not supported by C library.
	Using the fallback 'C' locale.

(gnome-ssh-askpass:16036): Gtk-WARNING **: 21:22:06.210: cannot open display: 
error: unable to read askpass response from '/usr/libexec/openssh/gnome-ssh-askpass'
Password for 'https://AyinDJ@github.com': 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 11 (delta 2), reused 4 (delta 0), pack-reused 0
Unpacking objects: 100% (11/11), done.
~/project1
xhe058@bolt $ ls
CS152_Project_Phase1/
~/project1
xhe058@bolt $ cd CS152_Project_Phase1/
~/project1/CS152_Project_Phase1
xhe058@bolt $ ls
fibonacci.min  input.min  lab1.lex  mytest.min  primes.min
~/project1/CS152_Project_Phase1
xhe058@bolt $ ll
total 20
-rw------- 1 xhe058 csmajs  333 Jun 25 21:22 fibonacci.min
-rw------- 1 xhe058 csmajs  133 Jun 25 21:22 input.min
-rw------- 1 xhe058 csmajs  328 Jun 25 21:22 lab1.lex
-rw------- 1 xhe058 csmajs  819 Jun 25 21:22 mytest.min
-rw------- 1 xhe058 csmajs 1379 Jun 25 21:22 primes.min
~/project1/CS152_Project_Phase1
xhe058@bolt $ vi input.min 
~/project1/CS152_Project_Phase1
xhe058@bolt $ git pull

(process:26829): Gtk-WARNING **: 21:26:26.334: Locale not supported by C library.
	Using the fallback 'C' locale.

(gnome-ssh-askpass:26829): Gtk-WARNING **: 21:26:26.336: cannot open display: 
error: unable to read askpass response from '/usr/libexec/openssh/gnome-ssh-askpass'
Username for 'https://github.com': AyinDJ

(process:26975): Gtk-WARNING **: 21:26:29.457: Locale not supported by C library.
	Using the fallback 'C' locale.

(gnome-ssh-askpass:26975): Gtk-WARNING **: 21:26:29.459: cannot open display: 
error: unable to read askpass response from '/usr/libexec/openssh/gnome-ssh-askpass'
Password for 'https://AyinDJ@github.com': 
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 2 (delta 1), reused 2 (delta 1), pack-reused 0
Unpacking objects: 100% (2/2), done.
From https://github.com/lzckira/CS152_Project_Phase1
   cf52fa6..15f69af  master     -> origin/master
Updating cf52fa6..15f69af
Fast-forward
 lab1.lex => phase1.lex | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename lab1.lex => phase1.lex (100%)
~/project1/CS152_Project_Phase1
xhe058@bolt $ ls
fibonacci.min  input.min  mytest.min  phase1.lex  primes.min
~/project1/CS152_Project_Phase1
xhe058@bolt $ ll
total 20
-rw------- 1 xhe058 csmajs  333 Jun 25 21:22 fibonacci.min
-rw------- 1 xhe058 csmajs  133 Jun 25 21:22 input.min
-rw------- 1 xhe058 csmajs  819 Jun 25 21:22 mytest.min
-rw------- 1 xhe058 csmajs  328 Jun 25 21:26 phase1.lex
-rw------- 1 xhe058 csmajs 1379 Jun 25 21:22 primes.min
~/project1/CS152_Project_Phase1
xhe058@bolt $ cd ..
~/project1
xhe058@bolt $ ls
CS152_Project_Phase1/
~/project1
xhe058@bolt $ cd ..
~
xhe058@bolt $ ls
lab_1/  project1/
~
xhe058@bolt $ cd lab_1/
~/lab_1
xhe058@bolt $ ls
input.min  lex.yy.c  lexer*  lexer.lex  test.min  test2.min  test3.min
~/lab_1
xhe058@bolt $ vi lexer.lex 
~/lab_1
xhe058@bolt $ cd ..
~
xhe058@bolt $ ls
lab_1/  project1/
~
xhe058@bolt $ cd project1/
~/project1
xhe058@bolt $ ls
CS152_Project_Phase1/
~/project1
xhe058@bolt $ cd CS152_Project_Phase1/
~/project1/CS152_Project_Phase1
xhe058@bolt $ ls
fibonacci.min  input.min  mytest.min  phase1.lex  primes.min
~/project1/CS152_Project_Phase1
xhe058@bolt $ vi phase1.lex 
~/project1/CS152_Project_Phase1
xhe058@bolt $ cd ..
~/project1
xhe058@bolt $ ls
CS152_Project_Phase1/
~/project1
xhe058@bolt $ cd ..
~
xhe058@bolt $ ls
lab_1/  project1/
~
xhe058@bolt $ cd lab_1/
~/lab_1
xhe058@bolt $ ls
input.min  lex.yy.c  lexer*  lexer.lex  test.min  test2.min  test3.min
~/lab_1
xhe058@bolt $ vi lexer.lex

%{
int line_num = 1, space_num = 1;
int integers=0;
int operators=0;
int parentheses=0;
int equal=0;
%}
%%

"+" {printf("PLUS\n");space_num += yyleng;operators++;}
"-" {printf("MINUS\n");space_num += yyleng;operators++;}
"*" {printf("MULT\n");space_num += yyleng;operators++;}
"/" {printf("DIV\n");space_num += yyleng;operators++;}
"(" {printf("L_PAREN\n");space_num += yyleng;parentheses++;}
")" {printf("R_PAREN\n");space_num += yyleng;parentheses++;}
"=" {printf("EQUAL\n");space_num += yyleng;equal++;}

(\.[0-9]+)|([0-9]+(\.[0-9]*)?([eE][+-]?[0-9]+)?)  {printf("NUMBER %s\n",yytext);space_num += yyleng;integers++;}

[ ]+ {space_num += yyleng;}

"\n" {line_num++, space_num=1;}


. {printf("Error at Line %d column %d :\"%s\"\n", line_num, space_num, yytext);exit(0);}

%%

int main(int argc, char ** argv)
{
   if(argc >= 2)
   {
      yyin = fopen(argv[1], "r");
      if(yyin == NULL)
      {
         printf("Error: Input file not exist\n");
-- INSERT --                                                                                             1,1           Top

