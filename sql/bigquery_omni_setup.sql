CREATE OR REPLACE EXTERNAL TABLE `my-omni-project.amazon_sales_data.amazon_sales_gold`
WITH CONNECTION `aws-us-east-1.s3-omni-connection`
OPTIONS (
  format = 'PARQUET',
  uris = ['s3://week9-project-s3/silver/amazon_sales_cleaned/*.parquet']
);

SELECT * FROM `my-omni-project.amazon_sales_data.amazon_sales_gold` 
LIMIT 10;