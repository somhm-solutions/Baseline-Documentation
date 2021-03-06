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
path=$2
AUTHOR=$3;


# Num Args: for error prevention
NUM_ARGS=3
if [ $# -lt $NUM_ARGS ]

  then
    echo "ERROR: Missing Arguements"
    printf "Reference:\n\t1) TITLE \n\t2) AUTHOR\n\t3) PATH\n"
    exit 1
fi

printf "Now creating file...\nTitle: $TITLE\nAuthor: $AUTHOR\nOutput Path: $OUTPUT_PATH";
printf "\n#/bin/bash\n# Title: $TITLE\n# Author: $AUTHOR \n# Desc: \n# Usage: " >> $OUTPUT_PATH;
printf "\n<<COMMENT" >> $OUTPUT_PATH;
printf "\n\t- Usage: \n\t- Args:\n\t- Functions:\n\t- Example:\nCOMMENT" >> $OUTPUT_PATH;


TAB="";

printf "Now creating file...\n Title: $TITLE\nAuthor: $AUTHOR\nOutput Path: $TITLE";
printf "\n#!$path \n#Title: $TITLE\n# Author: $AUTHOR \n# Desc:" > $TITLE;
printf "\n<<COMMENT" >> $TITLE;
printf "\n\t- Usage: \n\t- Args:\n\t- Functions:\n\t- Example:\nCOMMENT" >> $TITLE;
