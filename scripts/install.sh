#! /bin/bash
# -----------------------------------------------------------------------------
# install.sh
# -----------------------------------------------------------------------------
# Clones all Open Source Design repositories used for the website and renames 
# the repos as per what _config-dev.yml wants them to be named.
#
# To add/remove repos simply edit the "repos" array that starts on line 16
#
# :authors: Brennan Novak, 01AEEADB9EED1B5B4280E5B6C4CAA23B0F8C68B2
# :license: BSD license
# :date 16 November 2016
# :version: 0.0.1
# -----------------------------------------------------------------------------

declare -a repos=(
	"events"
	"jobs"
	"organization"
	"patterns"
	"resources"
	"talks"
)
line="--------------------------------------------------------------------------------"

# Start It Up
printf "\n"
echo -e "\e[97m                                     00xxxxxxx00                       "
echo -e "\e[97m                                  0x@@@@@@@@@@@@@x0                    "
echo -e "\e[97m                              0x@@@@@@@@@@@@@@@@@@@@x0                 "
sleep 1
echo -e "\e[37m                            x@@@@@@@@@@@@@@@@@@@@@@@@@@x0              "
echo -e "\e[37m                         0x@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@0            "
echo -e "\e[37m                        x@@@@@@@@@@@@@x0 @@@@@@@@@@@@@@@@@@@0          "
sleep 1
echo -e "\e[96m                      0@@@@@@@@@@@@@@0   @@@@@@@@@@@@@@@@@@@@0         "
echo -e "\e[96m                     0@@@@@@@@@@@@@@     0@@@@@@@@@@@@@@@@@@@@x        "
echo -e "\e[96m                     @@@@@@@@@@@@@@0       x@@@@@@@@@@@@@@@@@@@0       "
sleep 1
echo -e "\e[36m                    x@@@@@@@@@@@@@x           0x@@@@@@@@@@@@@@@@       "
echo -e "\e[36m                    @@@@@@@@@@@@@@0              @@@@@@@@@@@@@@@0      "
echo -e "\e[36m                    @@@@@@@@@@@@@@0              0@@@@@@@@@@@@@@0      "
sleep 1
echo -e "\e[94m                    @@@@@@@@@@@@@@x              0@@@@@@@@@@@@@@0      "
echo -e "\e[94m                    @@@@@@@@@@@@@@@0             x@@@@@@@@@@@@@@       "
echo -e "\e[94m                    0@@@@@@@@@@@@@@@0          0x@@@@@@@@@@@@@@x       "
echo -e "\e[94m                     x@@@@@@@@@@@@@@@@x      0@@@@@@@@@@@@@@@@@        "
sleep 1
echo -e "\e[34m                      x@@@@@@@@@@@@@@@0       @@@@@@@@@@@@@@@@0        "
echo -e "\e[34m                       x@@@@@@@@@@@@@0        0@@@@@@@@@@@@@x          "
echo -e "\e[34m                        0x@@@@@@@@@@x          0@@@@@@@@@@@0           "
echo -e "\e[34m                          0x@@@@@@@@            x@@@@@@@@0             "
echo -e "\e[34m                             0x@@@@              x@@@@x0               "
echo -e "\e[34m                               0x0                x0                   "
printf "\n"
sleep 1
echo -e "\e[34m                                 OPEN SOURCE DESIGN                    "
printf "\n"
echo -e "\e[34m           Bringing great design to free software one pixel at a time."
sleep 3
printf "\n"
echo -e "\e[34m                  Now, let's get started cloning some repos!"
printf "\n"
sleep 1
echo -e "\e[94m$line"
sleep 1

# Actually Clone Things
for repo in "${repos[@]}"
do 
	if [[ ! -d "_${repo}" ]]; then
		repo_url="git@github.com:opensourcedesign/${repo}.git"
		echo -e "\e[36m 1. Getting code at $repo_url"
		git submodule add $repo_url "_${repo}"
    sleep 1
  fi
done

# Print output
printf "\n"
echo -e "\e[34m       Hooray, you have all OSD website repos- time to get coding ;-)"
printf "\n"
