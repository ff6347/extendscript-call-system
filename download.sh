#!/bin/bash
#
function main(){

if [ "$1" == "-h" ]; then
  echo "Usage: $(basename "$0")"
  echo ""
  echo "    sh download.sh path/to/folder url"
  echo "    sh download.sh path/to/folder url myfilename"
  echo "    Examples:"
  # sh download.sh ~/Desktop/tmp/a/b http://www.gnu.org/software/gettext/manual/gettext.html
  echo "    sh download.sh ~/Desktop/tmp/a/b http://www.gnu.org/software/gettext/manual/gettext.html mygettext.html"
  echo ""
  echo "    spaces in paths have to mask"
  echo "    sh download.sh ~/Desktop/my\ folder http://www.gnu.org/software/gettext/manual/gettext.html"
  echo "    sh download.sh ~/Desktop/my\ folder http://www.gnu.org/software/gettext/manual/gettext.html my\ gettext.html"
  exit 0
fi
mkdir -p "$1"
cd "$1" || return
if [ -z "$3" ]
  then
    curl -L -O "$2"
  else
    curl -L -o "$3" "$2"
fi
}
main "$1" "$2" "$3"

# API
#
# sh download.sh path/to/folder url
# or
# sh download.sh path/to/folder url myfilename
#
# eg:
# sh download.sh ~/Desktop/tmp/a/b http://www.gnu.org/software/gettext/manual/gettext.html
# sh download.sh ~/Desktop/tmp/a/b http://www.gnu.org/software/gettext/manual/gettext.html mygettext.html
#
# spaces in paths have to mask
# sh download.sh ~/Desktop/my\ folder http://www.gnu.org/software/gettext/manual/gettext.html
# sh download.sh ~/Desktop/my\ folder http://www.gnu.org/software/gettext/manual/gettext.html my\ gettext.html