##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Via-Proxy" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-14
version "0.1"
description "This plugin extracts the proxy server details from the Via param of the HTTP header."

# About 131646 ShodanHQ results for "Via: "
examples %w|
12.149.157.79
122.152.135.214
69.175.124.85
189.126.248.229
212.89.225.173
193.91.64.43
82.94.255.126
216.162.20.34
204.188.255.72
121.121.231.174
77.242.194.157
187.29.17.226
203.56.14.244
178.238.130.197
83.147.205.234
|

# HTTP Header
def passive
	m=[]
	m << { :version=>@meta["Via"].to_s } unless @meta["Via"].nil?
	m << { :version=>@meta["via"].to_s } unless @meta["via"].nil?
	m
end

end

