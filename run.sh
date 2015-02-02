#! /bin/bash

##################
#load config file#
##################

. conf/config.sh

##################
#   exec data    #
##################

if [ $report_type = 'email' ];
then
    . temp/email.sh
	. script/email.sh
	
elif [ $report_type = 'cli' ];
then
    . temp/cli.sh
	. script/cli.sh
fi


##################
#     report     #
##################

if [ $report_type = 'email' ];
then
	echo $email
	echo 'test' | mail -s 'access_log_analysis report' $email
elif [ $report_type = 'cli' ];
then
	echo 'test2'
fi






