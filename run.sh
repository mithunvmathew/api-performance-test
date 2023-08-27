#!/bin/bash

NAME="jmeter"
JMETER_VERSION=${JMETER_VERSION:-"latest"}
IMAGE="jmeter:${JMETER_VERSION}"

source ${PWD}/test-config.sh

# Clean the logs and report directory
rm -rf ${REPORT_DIR} ${TEST_DIR}/jmeter.log ${TEST_DIR}/test-log.jtl ${TEST_LOG}
mkdir -p ${REPORT_DIR}

#Test Execution
docker run --rm --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} -Jusers=${USERS} -Jramp_up_time=${RAMP_UP_TIME} -Jloop=${LOOP} -Jtarget_host=${TARGET_HOST} -Jcsv_data=${CSV_DATA} -n -t ${TEST_SCRIPT} -l ${TEST_LOG} -j ${TEST_DIR}/jmeter.log -e -o ${REPORT_DIR}

echo "==== jmeter.log ===="
cat ${TEST_DIR}/jmeter.log

echo "==== Raw Test Report ===="
cat ${TEST_LOG}

echo "==== HTML Test Report ===="
echo "See HTML test report in ${REPORT_DIR}/index.html"
