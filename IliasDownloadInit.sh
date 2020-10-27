#!/bin/bash

# Modify directories at the end of this script

# Enter ILIAS username and password here
ILIAS_USERNAME=mm1234s
ILIAS_PASSWORD=passwort


# Choose a relative path to store the file in every data directory or an absolute path for one single file
# Keep it like this if you're not sure
HISTORY_FILE=.il-history

# Don't modify
source IliasDownload.sh

do_login

# Insert the folders you want to fetch here.
# Take the id of the folder out of the URL, e.g.
# https://ilias3.uni-stuttgart.de/goto_Uni_Stuttgart_fold_1086607.html
#                                                         ^^^^^^^
# You find this link at the bottom of every folder page.
# Subfolders are automatically downloaded, too.
# You need to use absolute paths for local folders!

# You might preset your home folder like this:
MY_STUDIES_FOLDER="/E/IliasTest"


# To download the a course with subfolders, add the type prefix, e.g.
# https://ilias3.uni-stuttgart.de/goto_Uni_Stuttgart_crs_1417864.html
#                                                    ^^^^^^^^^^^
fetch_folder "604137" "$MY_STUDIES_FOLDER/Kurs1"

# Don't modify
do_logout
print_stat

# Don't modify
rm $COOKIE_PATH
