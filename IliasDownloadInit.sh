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
# You can download the hole course or just specific folders.

# Preset your Homefolder
MY_STUDIES_FOLDER="/E/IliasTest"

# Copy for every course/folder you want to download
# Modify here
fetch_folder "593215" "$MY_STUDIES_FOLDER/Digitale Services für die Energie- und Mobolitätswende" 

fetch_folder "590654" "$MY_STUDIES_FOLDER/Energiedatenanalyse - statistische Methoden" 

fetch_folder "608226" "$MY_STUDIES_FOLDER/Geschäftsprozessmodellierung und betriebliche Informationssysteme" 

fetch_folder "604137" "$MY_STUDIES_FOLDER/Machine Learning 1 Grundlagen und statistische Lerntheorie" 

fetch_folder "590651" "$MY_STUDIES_FOLDER/Management flexibler Energiesysteme" 

fetch_folder "590657" "$MY_STUDIES_FOLDER/Management regenerativer Energiesysteme"

fetch_folder "290557" "$MY_STUDIES_FOLDER/Verteilte Systeme - Grundlagen" 

# Don't modify
wait
do_logout
print_stat

# Don't modify
rm $COOKIE_PATH
