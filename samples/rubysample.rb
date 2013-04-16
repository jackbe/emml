require 'rexml/Document'

p 'variable sent from EMML script : myvar =  ' + $myvar 
p 'variable sent from EMML script : xmldoc = ' + $xmldoc

#parse xmlDoc 
$doc = REXML::Document.new($xmldoc)

p $doc.root
$doc.root.add_element 'test1'
$doc.root.each_element {|e| p  e.elements   }

#modify ajaxianFeed from EMMLScript
$modified_feed = REXML::Document.new($ajaxianFeed)  

p $modified_feed.root.attributes['version']
p $modified_feed.root.elements['channel']


p $modified_feed.each_element( "//item" ) { |e| p e.elements['title'].text  }

el1 = $modified_feed.root.add_element 'modified_by'
el1.text="Presto Ruby Script Feature"

p $modified_feed.root
