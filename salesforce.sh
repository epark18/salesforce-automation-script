#!/bin/bash

#GRAB INPUT
echo "Please input salesforce directory to run Poshi Tests from"
read salesforceDir
echo "Using salesforce directory: $salesforceDir"


#RUN POSHI TESTS
for testcase in $@
do 
    echo "Running testcase: $testcase"
    cd $salesforceDir
    (gradle :salesforce:runPoshi -PposhiTestName="$testcase")
    echo "Testcase $testcase completed, copying test-result folder to current directory"
    cd ~/Desktop/salesforce-automation-script
    cp -r $salesforceDir/test-results/ .
done
