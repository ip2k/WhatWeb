##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 #
# Updated matches and version detection
##
Plugin.define "Open-Source-Ticket-Request-System" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-06-06
version "0.2"
description "OTRS is an Open source Ticket Request System (also well known as trouble ticket system) with many features to manage customer telephone calls and e-mails. - homepage: http://otrs.org/"

# About 529 results for "Powered by OTRS" inurl:customer.pl' @ 2010-60-06
examples %w|
customer.otrs.org
support.plimus.com/otrs/customer.pl
extranet.displaylink.com/otrs/customer.pl
unix-01.lair.co.za/otrs/customer.pl
itsm-demo.otrs.com/otrs/customer.pl
support.iworldaccounts.com/otrs/customer.pl
inco-support.mtc-berlin.com/otrs/customer.pl
max.softconf.com/otrs/customer.pl
otrs.itnsgroup.com/otrs/customer.pl
support.blaustift.com/otrs/customer.pl
|

matches [

# GHDB Match
{ :ghdb=>'"Powered by OTRS" inurl:customer.pl', :certainty=>75 },

# Default title
{ :text=>'<title>OTRS  :: Login</title>' },

# Version detection # Powered by text
{ :version=>/Powered by <a href="http:\/\/otrs.org[\/]*" class="small">OTRS ([^<]+)<\/a>/, :regexp_offset=>0 },

]

end

