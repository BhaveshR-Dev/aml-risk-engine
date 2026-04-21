data risk_scored;
    set alerts;

    risk_score = 0;

    /* High amount */
    if amount > 100000 then risk_score + 50;

    /* Suspicious country */
    if country in ('IR','NK') then risk_score + 40;

    /* Final Risk Level */
    if risk_score >= 80 then risk_level = "HIGH";
    else if risk_score >= 50 then risk_level = "MEDIUM";
    else risk_level = "LOW";
run;

proc print data=risk_scored;
run;
