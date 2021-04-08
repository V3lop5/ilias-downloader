#!/bin/bash

# Enter ILIAS username and password here
# Modify here
ILIAS_USERNAME="mm1234s"
ILIAS_PASSWORD="password"


# Choose a relative path to store the file in every data directory or an absolute path for one single file
# Keep it like this if you're not sure
HISTORY_FILE=.il-history

# Don't modify
source IliasDownload.sh

do_login

# Insert the folders you want to fetch here.
# Take the id of the folder/course out of the URL, e.g.
# https://www.ili.fh-aachen.de/goto_elearning_crs_604137.html
#                                                 ^^^^^^
# or
# https://www.ili.fh-aachen.de/goto_elearning_fold_604137.html
#                                                  ^^^^^^
#
# You find this link at the bottom of every folder page.
# Subfolders and exercises are automatically downloaded, too.
# You need to use absolute paths for local folders!
#
# You can download the hole course or just specific folders from a course.

# Preset your Homefolder
MY_STUDIES_FOLDER="/E/IliasTest"

# Copy for every course/folder you want to download
# Modify here
fetch_folder "123456" "$MY_STUDIES_FOLDER/Digitale Services für die Energie- und Mobolitätswende" 

fetch_folder "987654" "$MY_STUDIES_FOLDER/Energiedatenanalyse - statistische Methoden" 

# Don't modify (awaiting completion of all fetch_folders)
wait
do_logout
rm $COOKIE_PATH

# Don't modify (printing final stats)
print_stat
sleep 10
