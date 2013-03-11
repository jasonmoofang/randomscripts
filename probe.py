#!/ur/bin/env python

import sys
import os

import PyQt4.QtCore as QtCore

import PyKDE4.kdecore as kdecore
import PyKDE4.kdeui as kdeui
from PyKDE4.kio import KIO
from PyKDE4.nepomuk import Nepomuk
from PyKDE4.soprano import Soprano

website_resource = Nepomuk.Resource(kdecore.KUrl("http://yuenhoe.com/"))
website_resource.addType(Nepomuk.Vocabulary.NFO.Bookmark())
website_resource.setLabel(kdecore.KUrl("http://yuenhoe.com/").prettyUrl())

res = Nepomuk.Resource(kdecore.KUrl("http://yuenhoe.com/"));
properties = res.properties();
for i, v in properties.iteritems():
   print i, v.toString();
