/* Advanced AML Rules */

data advanced_alerts;
    set transactions;

    /* Rule 1: Structuring (multiple medium transactions) */
    if amount > 90000 and amount < 100000 then structuring_flag = 1;
    else structuring_flag = 0;

    /* Rule 2: High-risk geography */
    if country in ('IR','NK','SY') then geo_flag = 1;
    else geo_flag = 0;

    /* Rule 3: Large transaction */
    if amount > 200000 then large_txn_flag = 1;
    else large_txn_flag = 0;

    /* Rule 4: Combined suspicious behavior */
    if structuring_flag = 1 and geo_flag = 1 then combined_flag = 1;
    else combined_flag = 0;

run;

/* Generate alerts */
data final_alerts;
    set advanced_alerts;

    if structuring_flag = 1 
       or geo_flag = 1 
       or large_txn_flag = 1 
       or combined_flag = 1;
run;

proc print data=final_alerts;
run;
