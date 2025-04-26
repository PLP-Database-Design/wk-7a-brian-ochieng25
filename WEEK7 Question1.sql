WITH SplitProducts AS (
    SELECT
        OrderID,
        CustomerName,
        TRIM(value) AS Product
    FROM
        ProductDetail
    CROSS APPLY STRING_SPLIT(Products, ',')
)

SELECT
    OrderID,
    CustomerName,
    Product
FROM
    SplitProducts
ORDER BY
    OrderID, Product;