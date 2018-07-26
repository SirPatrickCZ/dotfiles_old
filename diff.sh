#!/bin/bash
echo "Zadejte cestu k první složce.."
read st
echo "Zadejte cestu ke druhé složce.."
read nd
mkdir ~/DIFF
cd $st
\ls | cat > ~/DIFF/1.txt
cd $nd
\ls | cat > ~/DIFF/2.txt
cd ~/DIFF/
diff 1.txt 2.txt
rm 1.txt 2.txt
rmdir ~/DIFF
cd

