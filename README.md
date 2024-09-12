# Data Analyst Portfolio - Business Intelligence (BI) 

## Project 1: Marketing Performance Dashboard in Looker Studio

For one of my portfolio projects, I used Google Looker Studio to build a marketing dashboard. Here's a quick summary of the process I followed:

[View project go to Google Looker Studio](https://lookerstudio.google.com/reporting/fd02cf72-7177-4518-950c-68f38af18061)

<img width="1194" alt="Marketing Performance Dashboard" src="https://github.com/user-attachments/assets/12493f42-d320-4868-b209-900788ec8492">

Connecting the Data: I created a new report in Google Looker Studio and connected it to a PostgreSQL database. 

I used a custom SQL query from a previous project to pull the relevant marketing data.

Creating Custom Fields: I added several custom metrics to the report, including:

- Ad Spend
- CPC (Cost Per Click)
- CPM (Cost Per Thousand Impressions)
- CTR (Click-Through Rate)
- ROMI (Return on Marketing Investment)
- Building the Dashboard: I designed the dashboard with three key charts:

- A combined chart displaying Ad Spend and ROMI over time, with the date on the horizontal axis and dual vertical axes for the two metrics.
- A line chart showing the number of active campaigns each month.
- A table with heat maps, where the campaign name was the dimension, and the metrics included Ad Spend, CPC, CPM, CTR, and ROMI.
- Filters: I added filters for campaign names and ad display dates to make the dashboard interactive and user-friendly.
  
