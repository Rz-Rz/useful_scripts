#!/bin/bash
src_folder="srcs"

format_files() {
  local files=""
  local substitute=0
  while [ $# -gt 0 ]; do
    case "$1" in
      -s|--substitute)
        substitute=1
        ;;
      *)
        src_folder="$1"
        ;;
    esac
    shift
  done

  for file in "$src_folder"/**; do
    if [ -f "$file" ]; then
      file_path="$file"
      file_extension="${file##*.}"
      file_name="${file%.*}"
      if [ "$substitute" -eq 1 ] && [ "$file_extension" == "c" ]; then
        file_extension="o"
      fi
      files="$files $file_name.$file_extension"
    fi
  done
  echo -e "$files"
}

format_files "$@"
