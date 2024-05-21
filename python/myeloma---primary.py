# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B630.00","system":"readv2"},{"code":"BBn0.14","system":"readv2"},{"code":"31671.0","system":"readv2"},{"code":"99702.0","system":"readv2"},{"code":"99067.0","system":"readv2"},{"code":"101350.0","system":"readv2"},{"code":"16527.0","system":"readv2"},{"code":"3672.0","system":"readv2"},{"code":"71994.0","system":"readv2"},{"code":"64618.0","system":"readv2"},{"code":"53647.0","system":"readv2"},{"code":"15211.0","system":"readv2"},{"code":"10411.0","system":"readv2"},{"code":"43450.0","system":"readv2"},{"code":"73135.0","system":"readv2"},{"code":"26135.0","system":"readv2"},{"code":"102164.0","system":"readv2"},{"code":"18744.0","system":"readv2"},{"code":"64068.0","system":"readv2"},{"code":"46042.0","system":"readv2"},{"code":"63864.0","system":"readv2"},{"code":"4944.0","system":"readv2"},{"code":"39187.0","system":"readv2"},{"code":"108102.0","system":"readv2"},{"code":"21329.0","system":"readv2"},{"code":"22158.0","system":"readv2"},{"code":"43312.0","system":"readv2"},{"code":"108235.0","system":"readv2"},{"code":"37182.0","system":"readv2"},{"code":"43552.0","system":"readv2"},{"code":"110349.0","system":"readv2"},{"code":"39490.0","system":"readv2"},{"code":"52593.0","system":"readv2"},{"code":"9172.0","system":"readv2"},{"code":"38321.0","system":"readv2"},{"code":"104418.0","system":"readv2"},{"code":"19028.0","system":"readv2"},{"code":"43459.0","system":"readv2"},{"code":"C90","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('multiple-myeloma-and-malignant-plasma-cell-neoplasms-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["myeloma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["myeloma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["myeloma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
