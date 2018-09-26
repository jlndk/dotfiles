#!/bin/bash

logfile=$1

dbus-monitor "interface='org.freedesktop.Notifications'" >> $logfile
