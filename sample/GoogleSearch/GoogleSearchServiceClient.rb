#!/usr/bin/env ruby
require 'GoogleSearchDriver.rb'

endpoint_url = ARGV.shift
obj = GoogleSearchPort.new(endpoint_url)

# Uncomment the below line to see SOAP wiredumps.
# obj.wiredump_dev = STDERR

# SYNOPSIS
#   doGetCachedPage(key, url)
#
# ARGS
#   key		 - {http://www.w3.org/2001/XMLSchema}string
#   url		 - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   return		 - {http://www.w3.org/2001/XMLSchema}base64Binary
#
# RAISES
#    N/A
#
key = url = nil
puts obj.doGetCachedPage(key, url)

# SYNOPSIS
#   doSpellingSuggestion(key, phrase)
#
# ARGS
#   key		 - {http://www.w3.org/2001/XMLSchema}string
#   phrase		 - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   return		 - {http://www.w3.org/2001/XMLSchema}string
#
# RAISES
#    N/A
#
key = phrase = nil
puts obj.doSpellingSuggestion(key, phrase)

# SYNOPSIS
#   doGoogleSearch(key, q, start, maxResults, filter, restrict, safeSearch, lr, ie, oe)
#
# ARGS
#   key		 - {http://www.w3.org/2001/XMLSchema}string
#   q		 - {http://www.w3.org/2001/XMLSchema}string
#   start		 - {http://www.w3.org/2001/XMLSchema}int
#   maxResults		 - {http://www.w3.org/2001/XMLSchema}int
#   filter		 - {http://www.w3.org/2001/XMLSchema}boolean
#   restrict		 - {http://www.w3.org/2001/XMLSchema}string
#   safeSearch		 - {http://www.w3.org/2001/XMLSchema}boolean
#   lr		 - {http://www.w3.org/2001/XMLSchema}string
#   ie		 - {http://www.w3.org/2001/XMLSchema}string
#   oe		 - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   return		GoogleSearchResult - {urn:GoogleSearch}GoogleSearchResult
#
# RAISES
#    N/A
#
key = q = start = maxResults = filter = restrict = safeSearch = lr = ie = oe = nil
puts obj.doGoogleSearch(key, q, start, maxResults, filter, restrict, safeSearch, lr, ie, oe)


