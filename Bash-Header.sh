#/bin/bash
# Title: Bash-Header.sh
# Author: mmartin@omhm.org 
# Desc: Download gpg key and verify file 
# Usage: 
<<COMMENT
# Usage:
    > Args:
        - TITLE(1): Title of doc
        - AUTHOR(2): Author of doc
        - TITLE: Output path
    > Functions:
    > Example:

COMMENT

TITLE=$1;
AUTHOR="mmartin@omhm.org";

TAB="";

printf "Now creating file...\nTitle: $TITLE\nAuthor: $AUTHOR\nOutput Path: $TITLE";
printf "\n#/bin/bash\n# Title: $TITLE\n# Author: $AUTHOR \n# Desc:" > $TITLE;
printf "\n<<COMMENT" >> $TITLE;
printf ""$TAB" > Usage:> Args:$TAB> Functions:$TAB> Example:\nCOMMENT" >> $TITLE;
