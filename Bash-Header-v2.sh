#/bin/bash
# Title: Bash-Header.sh
# Author: mmartin@omhm.org 
# Desc:   
<<COMMENT
# Usage:
    * Args:
        - TITLE(1): Title of doc
        - AUTHOR(2): Author of doc
        - OUTPUT_PATH: Output path
    * Functions:
    * Example:

COMMENT

TITLE=$1;
AUTHOR=$2;
OUTPUT_PATH=$3;

TAB="";


# Num Args: for error prevention
NUM_ARGS=3
if [ $# -lt $NUM_ARGS]
  then
    echo "ERROR: Missing Arguements"
    printf "Reference:\n\t1) TITLE \n\t2) AUTHOR\n\t3) OUTPUT_PATH\n"
    exit 1
fi

printf "Now creating file...\nTitle: $TITLE\nAuthor: $AUTHOR\nOutput Path: $OUTPUT_PATH";
printf "\n#/bin/bash\n# Title: $TITLE\n# Author: $AUTHOR \n# Desc: \n# Usage: " >> $OUTPUT_PATH;
printf "\n<<COMMENT" >> $OUTPUT_PATH;
printf "\n\t- Usage: \n\t- Args:\n\t- Functions:\n\t- Example:\nCOMMENT" >> $OUTPUT_PATH;


printf "Now creating file...\nTitle: $TITLE\nAuthor: $AUTHOR\nOutput Path: $OUTPUT_PATH";
printf "\n#/bin/bash\n# Title: $TITLE\n# Author: $AUTHOR \n# Desc: \n# Usage: " >> $OUTPUT_PATH;
printf "\n<<COMMENT" >> $OUTPUT_PATH;
printf ""$TAB"* Usage:* Args:$TAB* Functions:$TAB* Example:\nCOMMENT" >> $OUTPUT_PATH;


