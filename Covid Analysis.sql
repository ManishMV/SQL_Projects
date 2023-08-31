Select *
from PortfolioProject2..CovidDeaths
where continent is not null
order by 3,4

Select *
from PortfolioProject2..CovidVaccinations
order by 3,4

-- Select Data to be used

Select Location, date, total_cases, new_cases, total_deaths, population
from PortfolioProject2..CovidDeaths


--Looking at Total Cases vs Total Deaths
--Shows likelihood of dying if you contract corona in the states.

Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from PortfolioProject2..CovidDeaths
where location like '%states%'
order by 1,2

--Looking at Total cases v/s population
--Shows what percentage of population got covid.

Select Location, date, population, total_cases, (total_cases/population)*100 as PercentPopulationInfected
from PortfolioProject2..CovidDeaths
where location like '%states%'
order by 1,2

-- Looking at countries with highest infection rate compared to population
Select Location, population, Max(total_cases) as HighestInfectionCount, Max(total_cases/population)*100 as PercentPopulationInfected
from PortfolioProject2..CovidDeaths
group by Location, population
order by PercentPopulationInfected desc


-- Showing Countries with Highest Death Count per population
Select Location, Max(cast(Total_deaths as int)) as TotalDeathCount
from PortfolioProject2..CovidDeaths
where continent is not null
group by Location
order by TotalDeathCount desc



-- LET'S BREAK THINGS DOWN BY CONTINENT


-- Showing the continent with the highest death count per population
Select continent, Max(cast(Total_deaths as int)) as TotalDeathCount
from PortfolioProject2..CovidDeaths
where continent is not null
group by continent
order by TotalDeathCount desc


-- GLOBAL NUMBERS
Select date, SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
from PortfolioProject2..CovidDeaths
--where location like '%states%'
where continent is not null
group by date
order by 1,2


----------------------------

-- Looking at Total population vs vaccination

Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(cast(vac.new_vaccinations as int)) OVER (Partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
From PortfolioProject2..CovidDeaths dea
Join PortfolioProject2..CovidVaccinations vac
on dea.location = vac.location 
and dea.date = vac.date
where dea.continent is not null
order by 2,3







