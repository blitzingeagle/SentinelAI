#!/bin/bash
# 
# Copyright (c) Sensory, Inc. 2016.  All Rights Reserved.
# http://sensory.com/
#
# You may not use these files except in compliance with the license.
# A copy of the license is located the "LICENSE.txt" file accompanying
# this source. This file is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Show end-user license agreement, apply license key to binaries if
# the agreement is accepted.
#
# Author: Jacques H. de Villiers

shopt -s nullglob

SNSR="Sensory TrulyHandsfree binaries"
SDIR=$(dirname "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)")
FILES=(${SDIR}/lib/libsnsr.a ${SDIR}/models/*.snsr)
KEYFILE=${SDIR}/config/license-key.txt
SDKLICENSE=${SDIR}/bin/sdk-license


# Returns 1 for yes, 0 for no.
yesNo() {
    while :; do
        printf "$1 [yes or no]: "
        read yno
        case $yno in
            [yY] | [yY][eE][sS] ) return 1;;
            [nN]* ) return 0;;
            * ) echo 'Please type yes or no.';;
        esac
    done
}


# Returns 1 if the EULA was accepted, 0 if not.
acceptEULA() {
    fold -s -w `tput cols`  ${SDIR}/LICENSE.txt | more
    yesNo "Do you accept this license agreement?"
}


main() {
    ${SDKLICENSE} validate ${KEYFILE} && ${SDKLICENSE} check ${FILES[@]}
    case $? in
        0) return
           ;;
        1) printf "The ${SNSR} are not licensed.\n"
           ;;
        2) printf "The ${SNSR} license key has expired.\n"
	   yesNo "Pull from remote to update key?" || {
               cd ${SDIR} && git pull -v || exit 4
           }
           ;;
        *) printf "Unexpected licensing error encountered. Exiting.\n"
           exit 3
           ;;
    esac
    printf "Press RETURN to review the license agreement "
    printf "and update the files. " 
    read
    acceptEULA && {
        printf "\nEULA rejected. Exiting.\n"
        exit 14
    }
    ${SDKLICENSE} file ${KEYFILE} ${FILES[@]} || {
        printf "\nCould not apply license key.\n"
        exit 15
    }
    printf "License key applied.\n\n"
}

main

