#!/bin/bash
HTTP_CODE=$(curl -sL -w "%{http_code}\n" "week2-flask.duckdns.org" -o /dev/null || exit 0)
# echo 'Run was successful'


# if [ $HTTP_CODE -eq 0 ]
# then
#     echo "Run was successful"
#     exit 0
# else
#     exit 1
# fi

retVal=$?
if [ $retVal -ne 0 ];
then
    echo exit 1
fi 
echo 'Run was successful'
exit $retVal