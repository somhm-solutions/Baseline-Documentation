#/bin/bash
# Title: Header.sh
# Author: mmartin@omhm.org 
# Desc:  
# Usage: 
<<COMMENT
# Usage:
    * Args:
        - TITLE(1): Title of doc
        - AUTHOR(2): Author of doc
        - TITLE: Output path
    * Functions:
    * Example:

COMMENT

# User Arguements/ Defaults
TITLE=$1;
path=""
AUTHOR="mmartin@omhm.org";


TAB="";

printf "Now creating file...\n Title: $TITLE\nAuthor: $AUTHOR\nOutput Path: $TITLE";
printf "\n#!$path \n#Title: $TITLE\n# Author: $AUTHOR \n# Desc:" > $TITLE;
printf "\n<<COMMENT" >> $TITLE;
printf "\n\t- Usage: \n\t- Args:\n\t- Functions:\n\t- Example:\nCOMMENT" >> $TITLE;
