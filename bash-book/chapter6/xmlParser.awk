#!/usr/bin/awk -f
BEGIN {FS="\t"} {
    print "<row>"
    for (i = 1; i <=NF; i++){
        print "<entry>" $i "</entry>"
    }
    print "</row>"
}
