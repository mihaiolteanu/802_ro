#!/bin/bash

for orgfile in *.org; do
    # Generate html file from org file
    emacs $orgfile --batch -f org-html-export-to-html
done

# Make all subtitles available in a single archive
tar -czvf 802_ro.tar.gz *.ro.srt
