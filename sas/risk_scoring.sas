data risk_scored;
    set final_alerts;

    risk_score = 0;

    if large_txn_flag = 1 then risk_score + 50;
    if geo_flag = 1 then risk_score + 40;
    if structuring_flag = 1 then risk_score + 30;
    if combined_flag = 1 then risk_score + 20;

    if risk_score >= 80 then risk_level = "HIGH";
    else if risk_score >= 50 then risk_level = "MEDIUM";
    else risk_level = "LOW";
run;
