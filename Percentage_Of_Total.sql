CREATE DEFINER=`root`@`localhost` FUNCTION `percentage_of_total`(category CHAR (30)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
DECLARE result DECIMAL(2,2) default 00.00;
SET result = ROUND((sum(`category`) * 100.00 / count(`category`)), 2);
RETURN result;
END