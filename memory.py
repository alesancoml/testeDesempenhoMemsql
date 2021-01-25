##########################################################
# Script para leitura do consumo de memoria RAM
# Autor: Alesanco Andrade Azevedo
##########################################################

import os, psutil, time
from datetime import datetime
from openpyxl import load_workbook

os.system("sudo sysctl -w vm.drop_caches=3")
memory = 'memory.csv'
file_memory = open(memory,'a')
file_memory.write('day;hour;ram_total_mb;ram_used_mb;perc;\n')
file_memory.close()

def calcMem():
    mem = psutil.virtual_memory()
    data = datetime.now()
    hora = str(data.hour)+":"+str(data.minute)+":"+str(data.second)
    dia  = str(data.day)+"-"+str(data.month)
    file_memory = open(memory,'a')
    percent = (str(mem.percent)).replace(".",",")
    total = ("%.2f" %(float(mem.total)/ (1024.0 ** 2))).replace(".",",")
    used  = ("%.2f" %(float(mem.total - mem.free) / (1024.0 ** 2))).replace(".",",")
    file_memory.write(dia+";"+hora+";"+total+";"+used+";"+percent+"%\n")
    file_memory.close()
    del dia, hora, total, used, percent, mem

while True:
    time.sleep(1)
    calcMem()
