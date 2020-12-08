#!/bin/bash

exit_with_usage()
{
	echo "merge_blank: invalid option"
	echo "Usage: ./merge_blank.sh [PDFPATH]"
	exit 1
}

if [ "$#" -eq 1 ]; then
	PDFPATH=$1
	convert xc:none -page Letter blank.pdf
	pdfunite blank.pdf {,'/home/mali/Papers/annotations/Annotation_'}"$PDFPATH"
	rm blank.pdf
else
	exit_with_usage
fi
