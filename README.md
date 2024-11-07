Mapping Median Age in Europe

An R project that creates an interactive map of the median age across European regions using Eurostat data and spatial visualization packages.

Table of Contents

	•	Introduction
	•	Features
	•	Demo
	•	Installation
	•	Usage
	•	Dependencies
	•	Data Source
	•	License
	•	Author
	•	Acknowledgments

Introduction

This project aims to visualize the median age across European regions by creating an interactive map using R. The map allows users to explore demographic data interactively, providing insights into the age distribution across different areas in Europe. This can be valuable for researchers, policymakers, and anyone interested in European demographics.

Features

	•	Interactive Map: Zoom, pan, and hover over regions to see detailed median age information.
	•	Up-to-Date Data: Fetches the latest available median age data from Eurostat.
	•	Customizable Visualization: Uses leaflet for interactive mapping and allows for customization of the map’s appearance.
	•	Data Processing: Handles data retrieval, cleaning, and merging with spatial data.
	•	Reproducible Code: Provided in an R Markdown (.Rmd) file for easy reproduction and adaptation.

Demo

Click on the image above to see a live demo of the interactive map.

(Note: Replace the placeholder links with actual URLs or remove this section if not applicable.)

Installation

To run this project locally, follow these steps:
	1.	Clone the Repository

git clone https://github.com/your-username/mapping-median-age-europe.git
cd mapping-median-age-europe


	2.	Install Required Packages
Ensure you have R and RStudio installed. Open the R project or R Markdown file in RStudio and run the following code to install the required packages:

# List of required packages
required_packages <- c(
    "remotes", "restatapi", "tidyverse", "giscoR",
    "sf", "classInt", "leaflet", "htmltools"
)

# Install missing packages
installed_packages <- rownames(installed.packages())
for (pkg in required_packages) {
    if (!(pkg %in% installed_packages)) {
        install.packages(pkg)
    }
}

# Install 'restatapi' from GitHub
remotes::install_github("eurostat/restatapi", force = TRUE)


	3.	Run the R Markdown File
Knit the mapping_median_age_europe.Rmd file to generate the HTML output with the interactive map.

Usage

	•	Exploring the Map: Open the generated HTML file in your web browser. You can zoom in/out, pan around the map, and hover over regions to see the median age.
	•	Customizing the Map: Modify the R Markdown file to change aspects such as the color palette, labels, or data filters.
	•	Updating Data: The code fetches the latest data from Eurostat. To update the map with the most recent data, re-run the R Markdown file.

Dependencies

This project relies on the following R packages:
	•	remotes: For installing packages from GitHub.
	•	restatapi: To retrieve data from Eurostat.
	•	tidyverse: For data manipulation and visualization.
	•	giscoR: To retrieve geospatial data from GISCO.
	•	sf: For handling spatial data.
	•	classInt: For classifying numerical data.
	•	leaflet: For creating interactive web maps.
	•	htmltools: For HTML rendering in tooltips and popups.

Ensure all these packages are installed and loaded in your R environment.

Data Source

	•	Eurostat: Median age data retrieved using the restatapi package.
	•	GISCO: Geospatial data retrieved using the giscoR package.

License

This project is licensed under the MIT License. You are free to use, modify, and distribute this project. See the LICENSE file for details.

Author

Derrick Baruga

Acknowledgments

	•	Eurostat: For providing access to comprehensive statistical data on Europe.
	•	GISCO: For providing high-quality geospatial data.
	•	R Community: For developing the packages that made this project possible.
