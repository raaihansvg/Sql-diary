DELIMITER //

CREATE PROCEDURE sp_CreateCustomer(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_email VARCHAR(100),
    IN p_phone_number VARCHAR(20),
    IN p_address TEXT
)
BEGIN
    INSERT INTO customers (
        first_name,
        last_name,
        email,
        phone_number,
        address
    )
    VALUES (
        p_first_name,
        p_last_name,
        p_email,
        p_phone_number,
        p_address
    );
END //

DELIMITER ;

CALL sp_CreateCustomer(
	'Raihan','Lazuardi','rlz@gmail.com',01802031,'jl tembalang'
)

select *  from customers where first_name = 'Raihan';