#! /bin/bash

corruptDir=/path/to/flash-drive/FOUND.000

for a in $( ls -1 $corruptDir ); do
	name=$corruptDir/''$a
  if file $name | grep -i pdf
  then
    mv "$name" "${name//CHK/pdf}"
  elif file $name | grep -i excel
  then
    mv "$name" "${name//CHK/xls}"
  elif file $name | grep -i word
  then
    mv "$name" "${name//CHK/.docx}"
  elif file $name | grep -i jpeg
  then
    mv "$name" "${name//CHK/jpg}"
  elif file $name | grep -i bitmap
  then
    mv "$name" "${name//CHK/bmp}"
  elif file $name | grep -i png
  then
    mv "$name" "${name//CHK/png}"
  elif file $name | grep -i powerpoint
  then
    mv "$name" "${name//CHK/tpptx}"
  elif file $name | grep -i composite
  then
    mv "$name" "${name//CHK/xls}"
  elif file $name | grep -i sqlite
  then
    mv "$name" "${name//CHK/sqlite}"
  elif file $name | grep -i dbase
  then
    mv "$name" "${name//CHK/dbf}"
  elif file $name | grep -i data
  then
    mv "$name" "${name//CHK/xls}"
  fi
done
