#!/bin/bash

sed -i --follow-symlinks '/nologin/d' /etc/shells
echo "/sbin/nologin" >> /etc/shells

 