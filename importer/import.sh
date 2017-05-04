#!/usr/bin/env bash

if [ "$IMPORT_RUN" = true ] ; then
  for filename in *.csv;
  do
    mongoimport --host=mongodb -d $MONGO_DATABASE -c $MONGO_COLLECTION --type csv --file $filename --headerline;
  done
fi
