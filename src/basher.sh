#!/bin/sh
curl -s http://www.bash.org/\?random | pup 'body center table tbody tr td p:nth-child(2)' | awk '{gsub("<[^>]*>", "")}1' | sed 's/&amp;/\&/g; s/&lt;/\</g; s/&gt;/\>/g; s/&quot;/\"/g; s/&#39;/\'"'"'/g; s/&ldquo;/\"/g; s/&rdquo;/\"/g;'
