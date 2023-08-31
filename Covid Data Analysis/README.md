## COVID Data analysis 
Link to dataset: https://ourworldindata.org/covid-deaths

Here's a brief overview of the main components of the project:

**Data Selection and Ordering:**
   The code begins by selecting data from the "CovidDeaths" and "CovidVaccinations" tables. It retrieves information about COVID-19 cases, deaths, vaccinations, and population.

1. **Total Cases vs. Total Deaths:**
   This section calculates the percentage of deaths in relation to the total reported cases for locations that contain the word "states" (i.e United States) It provides insights into the likelihood of dying after contracting the virus in these locations.

2. **Total Cases vs. Population:**
   This part calculates the percentage of the population that has been infected by COVID-19 in the "states" locations. It helps visualize the extent of the virus's spread within these areas.

3. **Countries with Highest Infection Rate:**
   This section identifies countries with the highest infection rates based on the proportion of total cases in relation to their population. The results are ordered by the percentage of the population infected.

4. **Countries with Highest Death Count per Population:**
   This segment identifies countries with the highest death counts in relation to their population. It aims to highlight the severity of the pandemic's impact on different locations.

5. **Continent Analysis:**
   The code proceeds to analyze data on a continental level. It identifies the continent with the highest death count per population, providing insights into the pandemic's impact across different continents.

6. **Global Numbers:**
   The code calculates global statistics, including total cases, total deaths, and death percentage, aggregated by date. These numbers provide an overview of the pandemic's progression on a global scale.

7. **Population vs Vaccination Analysis:**
   Finally, the project includes an analysis of population and vaccination data. It combines information from the "CovidDeaths" and "CovidVaccinations" tables to calculate the rolling number of people vaccinated over time for different locations.

Overall, this project demonstrates a comprehensive analysis of COVID-19 data, encompassing aspects such as infection rates, death rates, vaccination progress, and population impact, on both a country and continental level. 

