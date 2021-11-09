import sys

if __name__ == '__main__':
  file_name = sys.argv[1]
  file1 = open(file_name, 'r')
  Lines = file1.readlines()
  mylist = Lines[4].split("(")
  k = 0
  a = mylist[1][k]
  res = ''
  while a != '%':
    res += a
    k += 1
    a = mylist[1][k]
    
  if float(res) > 90.0:
    print("OK")
  else:
    print("Not OK") 