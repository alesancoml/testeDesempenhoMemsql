##########################################################
# Script para escrita em outras maquinas
# Autor: Alesanco Andrade Azevedo
##########################################################

import paramiko
from paramiko import SSHClient
from openpyxl import load_workbook
import os, sys, time

def SSH(host, experiment):
    ssh = SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(hostname=host,username='alesanco',password='senha')
    stdin,stdout,stderr = ssh.exec_command("sudo sysctl -w vm.drop_caches=3", get_pty=True)
    stdin.write('vacapreta007\n')
    stdin.flush()
    if stderr.channel.recv_exit_status() != 0:
        print stderr.read()
    ftp = ssh.open_sftp()
    file=ftp.file('/home/alesanco/oficial/memory.csv', "a", -1)
    file.write(experiment+';\n')
    file.flush()
    ftp.close()
    ssh.close()

def clear_caches(experiment):
    try:
        leaf1 = SSH('172.21.6.152', experiment)
        leaf2 = SSH('172.21.6.153', experiment)
        statistics = open('./memory.csv','a')
        statistics.write(experiment+';\n')
        statistics.close()
    except Exception():
        try:
            leaf1 = SSH('172.21.6.152', experiment)
            leaf2 = SSH('172.21.6.153', experiment)
            statistics = open('./memory.csv','a')
            statistics.write(experiment+';\n')
            statistics.close()
        except Exception():
            statistics = open('./memory.csv','a')
            statistics.write(experiment+';\n')
            statistics.close()
            pass
