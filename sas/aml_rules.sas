/* Sample Transaction Data */
data transactions;
    input txn_id account_id amount country $;
    datalines;
1 101 5000 IN
2 102 200000 US
3 103 150000 IR
4 104 3000 IN
5 105 500000 UK
;
run;

/* Rule 1: High Value Transactions */
data high_value;
    set transactions;
    if amount > 100000;
run;

/* Rule 2: Suspicious Countries */
data suspicious_geo;
    set transactions;
    if country in ('IR', 'NK');
run;

/* Combine Alerts */
data alerts;
    set high_value suspicious_geo;
run;

/* Print Alerts */
proc print data=alerts;
run;