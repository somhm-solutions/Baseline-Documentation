
#/bin/bash
# Title: Create-Repo.sh
# Author: somhm-solutions 
# Desc: 
# Usage: 
<<COMMENT
	- Usage: 
	- Args:
		1) REPO_NAME
		2) LOCAL_REPO_PATH
		3) AUTHOR *Uncomment for use* 
		4) MAINTAINERS *Uncomment for use* 
		5) DEPARTMENT *Uncomment for use*  
	 
	- Functions:
	- Example:
COMMENT


# Repo Title Config
REPO_NAME=$1;
LOCAL_REPO_PATH=$2;
REPO=$LOCAL_REPO_PATH$REPO_NAME
ENABLE_REMOTE_REPO=${2:-" "};
REMOTE_PATH=${3:-""};

# (Authorship & Licensing)
# UNCOMMENT BELOW
AUTHORS="ghoul@omhm.org"
MAINTAINERS="";
DEPARTMENT="DevOps";
LICENSES="";

# Num Args: for error prevention
NUM_ARGS=2
if [ $# -le $NUM_ARGS ]
  then
    echo "ERROR: Missing Arguements"
    printf "ARGS:\n\t1) REPO_NAME\n\t2) LOCAL_REPO_PATH\n\t3) REMOTE *Optional control for remote git*  4) REMOTE_PATH *Optional control for remote git*  "
    exit 1
fi



# Build Template
function create_readme(){

    

    # Title
    printf "# **$REPO_NAME**" >> "README.md";
    printf "\n\t***Author(s)**: *$AUTHORS*">> "README.md";
    printf "\n\t***Maintainer(s)**: *$MAINTAINERS*">> "README.md";
    printf "\n\t***Department**: *$DEPARTMENT*">> "README.md";
    printf "\n\t***License(s)**: *$LICENSES*">> "README.md";



    # Design
    printf "\n\n## **Design**:" >> "README.md";
    printf "\n\t* *Purpose*:" >> "README.md";
    printf "\n\t* *Reqs*: ">> "README.md";
    printf "\n\t* *Contents*:" >>  "README.md";
    
    printf "\n\t* *Server(s)*:\n\t\t* *Application*:\n\t\t* *Database*:" >>  "README.md";
    printf "\n\t* *Networking*:\n\t\t* *DNS*: \n\t\t* *Routes*: ">>  "README.md";
    printf "\n\t* *Application Dependencies*:" >> "README.md";
    printf "\n\t* *Dependant Programs*:" >> "README.md";

    # Basic Usage
    printf "\n\n## **Basic Usage**:" >> "README.md";
    printf "\n\t* *Usage*:" >> "README.md";
    printf "\n\t* *Common Use Cases*:" >> "README.md";
    printf "\n\t* *Examples*:" >> "README.md";

    printf "\n\n## *Testing*" >> "README.md"; 
    printf "\n### *Test Input*" >> "README.md"; 
    printf "\n\t* *Parameters*:" >> "README.md";
    printf "\n\t* *Actions*:" >> "README.md";

    printf "\n\n### Test Output" >> "README.md";
    printf "\n\t* *Output*:" >> "README.md";
    printf "\n\t* *Screenshots*:" >> "README.md";
    printf "\n\t* *Video*:" >> "README.md";
    printf "\n\t* *Etc*:" >> "README.md";

    printf "\n\n## Notes:" >> "README.md";
    printf "* *[option]*: " >> "README.md":qq::;
    
}



# Create Repo Directory
mkdir $REPO;

# Create README
create_readme;

git init;
git add README.md;
git commit -m "First commit";

# Switch for pushing to git repo. Uses the following arg
#	1) REMOTE_PATH
if [ "--remote" = $ENABLE_REMOTE_REPO ]
	then
        echo "Pushing to remote repo $REMOTE_PATH"
		git remote add origin $REMOTE_PATH;
		git push -u origin master;
fi