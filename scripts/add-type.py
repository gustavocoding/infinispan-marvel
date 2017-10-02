import fileinput
import os
import sys

def addType(file):
   for line in fileinput.input(file, inplace=1):
      print line,
      if line.startswith("{"):
         print '    "_type": "Character",'

dir=sys.argv[1]

for item in os.listdir(dir):
   if item.endswith(".json"):
     full_name = "%s/%s" % (dir, item)
     addType(full_name)
