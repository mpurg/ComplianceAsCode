#!/bin/bash
# packages = audit
echo "-w /var/log/journal/ -p wa" >> /etc/audit/rules.d/journal.rules
