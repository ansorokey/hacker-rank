SELECT
    ROUND(
        ABS(MAX(long_w) - MIN(long_w)) + ABS(MAX(lat_n) - MIN(lat_n)),
    4)
FROM STATION;
