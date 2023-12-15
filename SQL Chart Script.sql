SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://demogen2storage.dfs.core.windows.net/bd-project/BI/ml_result.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result]
