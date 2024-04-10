#!/bin/bash
# packages = audit
echo "-w /var/log/journal/ -p wa -k journal" >> /etc/audit/rules.d/journal.rules
