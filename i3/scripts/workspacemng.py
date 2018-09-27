#!/usr/bin/env python3

from json import loads
from os import popen
from sys import argv

from pyxr import Namespace

def ipc_query(req="command", msg=""):
    ans = popen("i3-msg -t " + req + " " +  msg).readlines()[0]
    return loads(ans)

# Retrieving active display
def get_active_display():
    for w in ipc_query(req="get_workspaces"):
        if w['focused']:
            return w['output']

def get_active_prefix():
    # Get variables from Xresources
    xr = Namespace()
    return {
        xr.monitor1: 'a',
        xr.monitor2: 'b',
        xr.monitor3: 'c'
    }.get(get_active_display(), 'a')

#Change active workspace
def switch(args):
    print(ipc_query(msg="'workspace " +  args[2] + get_active_prefix() + "'"))

#Move active window to a given workspace
def move(args):
    print(ipc_query(msg="'move container to workspace " + args[2] + get_active_prefix() + "'"))

if __name__ == "__main__":
    # Usage & checking args
    if len(argv) != 3:
        print("Usage: switch-workspace.py action name-of-workspace")
        exit(-1)

    cmd = argv[1]

    if(cmd == 'switch'):
        switch(argv)
    elif(cmd == 'move'):
        move(argv)
    else:
        print("Invalid action: " + cmd)
