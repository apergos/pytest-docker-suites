#!/bin/bash


good_results="tests/tmp/good_results"

# script name as called i.e. $0 will be
# tests/job/x/verify/myname
# or maybe some extra paths in there at the
# beginniing, so dig the job name out:

# third field from the end if we split on /
job_name=`echo $0 | rev | cut -d / -f 3 | rev`

#LC_ALL=C find data -type f -exec md5sum {} | sort \; > "$good_results"
LC_ALL=C ls -laR data > "$good_results"

for h in dataset2 dataset1001; do
    echo "*****************************"
    echo "* Comparing $h"
    echo "*****************************"
    results="tests/jobs/${job_name}/tmp/results_$h"
    if [ -e "$results" ]; then
	diff "$good_results" "$results"
    else
        echo "results file $results missing!!"
    fi
done
