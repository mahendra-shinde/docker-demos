#!/bin/bash
set -e

if [ ! -d "/opt/svn/conf" ]; then
  echo "   Could not find configuration directory /opt/svn/conf"
  echo "   creating svn directory..."
   svnadmin create /opt/svn
  echo "   Successfully created!"
fi
  echo " Starting SVN service ..."
  exec "$@" 
