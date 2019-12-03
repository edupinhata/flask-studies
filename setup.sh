#!/bin/bash

export FLASK_APP=flaskr
export FLASK_ENV=developer

if [ "$#" == "1" ]; then
    if [ "$1" == "run" ]; then
        flask run
    fi
fi
    
