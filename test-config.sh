#!/bin/bash

# Test directory
TEST_DIR=${PWD}/test

# Web report is generated in this folder
REPORT_DIR=${TEST_DIR}/report

# Jmeter test script to be execute
TEST_SCRIPT=${TEST_DIR}/scripts/GetAllBrokerageAccounts.jmx

TEST_LOG=${TEST_DIR}/test-log.jtl

# The host server where test request is targeting
TARGET_HOST="api.developer.qa.dkb.de"

# No of users or active threads
USERS=28

# Total time for all the users(threads) to a test execution
RAMP_UP_TIME=10

# No of loop or number of iterations for every user
LOOP=1

CSV_DATA=${TEST_DIR}/data/QaUsers.csv
