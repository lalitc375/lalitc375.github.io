import sys

import urllib2
from myapp.models import *


from django.utils import timezone
from bs4 import BeautifulSoup


for y in ('chhattisgarh','maharashtra','uttar-pradesh','himachal-pradesh','odisha','haryana','karnataka','rajasthan','andhra-pradesh','bihar'):
	url='http://www.sarkariyojna.co.in/'+y+'/'
	page = urllib2.urlopen(url)
	soup = BeautifulSoup(page,"html.parser")


	Tlist=soup.find_all('h4',class_='article-title')
	Dlist=soup.find_all('div',class_='entry')
	for x in range(len(Tlist)):
		D=data(type='schemes', area='both', title=unicode(Tlist[x]).encode('utf8'), description=unicode(Dlist[x].p).encode('utf8'), date=timezone.now().date(),state=y, district='all', for_whom='all')
		D.save()

