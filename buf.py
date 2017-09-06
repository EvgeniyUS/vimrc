#-*- coding: utf-8 -*-

from xml.dom.minidom import parse, Node

doc = parse('vimcolors.xml')

filee = open('buf.txt', 'r')

def Funk():
  for line in filee:
    guifg = 0
    guibg = 0
    for rootEle in doc.documentElement.childNodes:
      if rootEle.nodeType == Node.ELEMENT_NODE:
        if line.split(' ')[2].split('=')[1].encode(encoding='utf-8')==str(rootEle.getAttribute('cterm')).encode(encoding='utf-8'):
          guifg = 'guifg='+ str(rootEle.getAttribute('gui')).encode(encoding='utf-8')

    for rootEle2 in doc.documentElement.childNodes:
      if rootEle2.nodeType == Node.ELEMENT_NODE:
        if line.split(' ')[3].split('=')[1].encode(encoding='utf-8')==str(rootEle2.getAttribute('cterm')).encode(encoding='utf-8'):
          guibg = 'guibg='+ str(rootEle2.getAttribute('gui')).encode(encoding='utf-8')

    if line.split(' ')[4].split('=')[1].encode(encoding='utf-8').strip('\n')=='NONE':
      F = 'gui=NONE'
    elif line.split(' ')[4].split('=')[1].encode(encoding='utf-8').strip('\n')=='bold':
      F = 'gui=bold'

    if type(guibg) == str and type(guifg) == int:
      print line.strip('\n'),guibg,F
    elif type(guibg) == int and type(guifg) == str:
      print line.strip('\n'),guifg,F
    elif type(guibg) == str and type(guifg) == str:
      print line.strip('\n'),guifg,guibg,F
    elif type(guibg) == int and type(guifg) == int:
      print line.strip('\n'),F
    else:
      print "mm..."

if __name__ == '__main__':
  Funk()
