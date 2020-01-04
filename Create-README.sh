
#/bin/bash
# Title: Create-README.sh
# Author: mmartin@omhm.org 
# Desc: Creates README.md Template
<<COMMENT
    > Usage: 
    > Args:
        1) Repo Name
    > Functions:
    > Example:
COMMENT

# Repo Title Config
REPO_NAME=$1;
REPO_PATH=$2;


# (Authorship & Licensing)
# UNCOMMENT BELOW
AUTHORS="ghoul@omhm.org"
MAINTAINERS="";
DEPARTMENT="DevOps";
LICENSES="";





# Build Template
function create_readme(){

    # README.md Config
    FILE_NAME="README";
    FILETYPE=".md";

    # Title
    printf "# **$REPO_NAME**" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t***Author(s)**: *$AUTHORS*">> "$FILE_NAME"$FILETYPE;
    printf "\n\t***Maintainer(s)**: *$MAINTAINERS*">> "$FILE_NAME"$FILETYPE;
    printf "\n\t***Department**: *$DEPARTMENT*">> "$FILE_NAME"$FILETYPE;
    printf "\n\t***License(s)**: *$LICENSES*">> "$FILE_NAME"$FILETYPE;



    # Design
    printf "\n\n## **Design**:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Purpose*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Contents*:" >>  "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Server(s)*:\n\t\t* *Application*:\n\t\t* *Database*:" >>  "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Networking*:\n\t\t* *DNS*: \n\t\t* *Routes*: ">>  "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Application Dependencies*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Dependant Programs*:" >> "$FILE_NAME"$FILETYPE;

    # Basic Usage
    printf "\n\n## **Basic Usage**:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Usage*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Common Use Cases*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Examples*:" >> "$FILE_NAME"$FILETYPE;

    printf "\n\n## *Testing*" >> "$FILE_NAME"$FILETYPE; 
    printf "\n### *Test Input*" >> "$FILE_NAME"$FILETYPE; 
    printf "\n\t* *Parameters*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Actions*:" >> "$FILE_NAME"$FILETYPE;

    printf "\n\n### Test Output" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Output*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Screenshots*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Video*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Etc*:" >> "$FILE_NAME"$FILETYPE;

    printf "\n\n## Notes:" >> "$FILE_NAME"$FILETYPE;
    printf "* *[option]*: " >> "$FILE_NAME"$FILETYPE;
    
}

create_readme;
mv  "$FILE_NAME"$FILETYPE $REPO_PATH;