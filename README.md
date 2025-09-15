# 🧾 Conduct Market Fit Research for Air Purifier Development Using AQI Analytics 

Market research and analytics project to evaluate the demand and product-market fit for air purifiers in India using AQI, health, vehicle, and population datasets.

---

## 📌 Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Problem Statement</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies used</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#research-questions--key-findings">Key Insights</a>
- <a href="#dashboard">Analysis</a>
- <a href="#final-recommendations">Conclusion & Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---

<h2><a class="anchor" id="overview"></a>Overview</h2>

AirPure Innovations, a startup addressing India’s air quality crisis, seeks to assess whether there is a strong and sustained demand for air purifiers.  
This project leverages SQL, Power BI, and external datasets to analyze pollution severity, health impacts, demand triggers, and competitor insights, providing strategic recommendations for product development.

---

<h2><a class="anchor" id="business-problem"></a>Problem Statement</h2>

"AirPure Innovations" is a startup born out of the air quality crisis in India, with 14 cities ranking among the world’s top 20 most polluted urban centers. The company is in the early stages of product development and is unsure whether there is a strong, sustained demand for its air purifier product. Before committing to production and R&D, they need to answer critical questions:

1. What pollutants or particles should their air purifier target? 
2. What are the most essential features that should be incorporated into the air purifier?
3. Which cities have the highest demand for air purifiers, and what is the market size in these regions?
4. How can R&D be aligned with localized pollution patterns?

The urgency is highlighted by real-world examples: biotech entrepreneur Bryan Johnson walked out of a podcast due to poor air quality, and Delhi's Taj Hotels now display AQI readings, emphasizing the growing awareness of air quality in daily life and business decisions.
COO Tony Sharma believes success lies in analyzing three key dimensions of the market. Tony has reached out to Peter Pandey, a Data Analyst, to assist in gathering insights for strategic decisions. The three dimensions to be analyzed are:

&nbsp;1. Severity Mapping: Identify cities experiencing persistent or worsening AQI (Air Quality Index) levels.<br>

&nbsp;2. Health Impact Correlation: Quantify the health burden due to pollution and its impact on consumers' well-being.<br>

 3.Demand Triggers: Examine the relationship between pollution spikes and shifts in consumer behavior related to air purifier demand.
While searching for reliable, real-time AQI data, the team discovered the "Dataful" platform, which provides datasets essential for answering these questions.

**Task**

Imagine yourself as Peter Pandey and perform the following tasks: 

• Check ‘primary_and_secondary_questions.pdf’. You can use any tool of your choice (Python, SQL, Power BI, Tableau, Excel, PowerPoint) to analyse and answer these questions. More relevant instructions are provided in this document.<br>
• Design a dashboard with your metrics and analysis. The end users of this dashboard are top-level management and the product strategy team - hence, the dashboard should be self-explanatory and easy to understand.<br>
• Present your insights to Tony Sharma & team. Be creative and concise with your presentation.<br>
• Use your dashboard in the presentation along with the deck.<br>
• Use additional data based on your own research to support your recommendations.


---

<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- <a href="./datasets/aqi.csv">aqi: Day-wise, State-wise Air Quality Index (AQI) of Major Cities and Towns in India</a><br>
- <a href="./datasets/idsp.csv">idsp: State, District, and Disease-wise Cases and Deaths reported due to Outbreak of Diseases as per Weekly reports under IDSP</a><br>
- <a href="./datasets/population_projection.csv">population_projection: Population Projection of India: State- and Gender-wise Yearly Projected Urban Population (2011-2036)</a><br>
- <a href="./datasets/vahan.csv">vahan: State, Vehicle Class and Fuel Type-wise Total Number of Vehicles Registered in Each Month in India</a><br>

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies used</h2>

- SQL
- Power BI
- Excel
- Power Query
- GitHub

---

<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
## Project Structure

air-purifier-market-fit-analysis-sql/
│
├── README.md
│
├── analysis/  
│   ├── Conclusion & Recommendations.pdf
│   └── Primary and Secondary Analysis Report.pdf
│
├── datasets/                     
│   ├── aqi.csv
│   ├── idsp.csv
│   ├── population_projection.csv
│   └── vahan.csv
│
├── sql_scripts/                  
│   ├── 1st_primary_question.sql
│   ├── 2nd_primary_question.sql
│   ├── 3rd_primary_question.sql
│   ├── 4th_primary_question.sql
│   ├── 5th_primary_question.sql
│   ├── 6th_primary_question.sql
│   └── 7th_primary_question.sql
```

---


<h2><a class="anchor" id="research-questions--key-findings"></a>Key Insights</h2>

- PM2.5 and PM10 remain the most critical pollutants across Indian metros.  
- Children under 5 face the highest health risks (≈169,000 annual deaths due to pollution).  
- EV adoption shows partial improvement in AQI, but not uniform across states.  
- AQI awareness is high in metros (~70%) but very low (~10%) in poorer communities.  
- Competitors (Philips, Honeywell, Xiaomi, Dyson, etc.) emphasize multi-stage HEPA & carbon filters, with opportunities in **affordability, localized solutions, and health-driven messaging**.  

---

<h2><a class="anchor" id="dashboard"></a>Analysis</h2>

- <a href="./analysis">Primary & Secondary Analysis Report, Conclusion & Recommendations</a>


---

<h2><a class="anchor" id="final-recommendations"></a>Recommendations</h2>

- Prioritize filtration against PM2.5, PM10, and NO₂ as core pollutants.
- Develop models tailored to urban metros with high AQI, while exploring mid-tier markets for expansion.
- Focus on affordability and health-driven messaging, particularly around child safety.
- Integrate smart yet user-friendly features to compete with established brands.
- Align R&D with regional pollution profiles to maximize impact and adoption.

---

<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

**Sudarshan Parkale**  
Data Analyst  
📧 Email: sudarshanparkale2003@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/sudarshanparkale/)  
🔗 [Portfolio](https://codebasics.io/portfolio/Sudarshan-Satish-Parkale)
