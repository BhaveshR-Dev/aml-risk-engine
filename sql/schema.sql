-- AML Transaction Table Structure

CREATE TABLE transactions (
    txn_id INT,
    account_id INT,
    amount DECIMAL(10,2),
    country VARCHAR(5)
);