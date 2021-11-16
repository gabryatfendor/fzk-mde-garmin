# Here I'm using the ITA suffix, choose the one you need
# Also run manually "perl mt.pl bootstrap" THE FIRST TIME ONLY
perl mt.pl create Freizeitkarte_ITA
perl mt.pl fetch_osm Freizeitkarte_ITA
perl mt.pl fetch_ele Freizeitkarte_ITA
perl mt.pl join Freizeitkarte_ITA
perl mt.pl split Freizeitkarte_ITA
perl mt.pl build Freizeitkarte_ITA
perl mt.pl gmapsupp Freizeitkarte_ITA

# Since QMapShack has issues building the routino DB we can use directly planetsplitter to do the job
# The following lines will work on linux so uncomment if needed
# mv pbf to current dir
# /usr/bin/planetsplitter --dir=output_dir --prefix=choose_your_prefix --tagging=/usr/share/routino/tagging.xml --parse-only latest.pbf &&
# /usr/bin/plantesplitter --dir-output_dir --prefix=choose_your_prefix --tagging=/usr/share/routino/tagging.xml --process-only;
