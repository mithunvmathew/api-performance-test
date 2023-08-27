# Performance Test Using Jmeter as Docker image

This is a performance test set up and test suits with Jmeter-5.5.

## Prerequisite

Docker must be installed and available in the system where the test is running.

## How to Run the Performance Test

For Installation and set up , execute :  **./build.sh**  

To run the test, execute :  **./run.sh**   

Note: All the scripts in /performance-test directory. 
So script executed from /performance-test directory or set up the exact script path before executing the script.

## Project Setup

build.sh --> download jmeter and create image in docker  
run.sh --> execute test. It will execute the JMX script  
test-config.sh --> all test configurations  
test/data --> location where the test data stored  
test/report --> location where the jmeter report(Jmeter dashboard) for each run stored.
Before each run , it will clear the existing reports.  
test/scripts --> location where the jmeter script(JMX files) stored.
