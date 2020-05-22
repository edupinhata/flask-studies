#!/bin/bash
# This script intent to store how to execute 
# the pytest.
coverage run -m pytest
coverage report
coverage html
