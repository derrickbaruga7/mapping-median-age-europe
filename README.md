# Mapping median age in Europe

An interactive Leaflet map built with R and Quarto. The analysis joins Eurostat median-age observations to GISCO NUTS 3 boundaries, then adds region tooltips, a color scale, and country context.

## Data coverage

The current code requests Eurostat dataset `demo_r_pjanind3` for **2021 and 2022** and uses **2021 NUTS boundaries**. Where a 2022 observation is missing, it uses the 2021 value. It does not automatically choose the latest year. Regions without observations remain unfilled over the country background.

## Run locally

Install R and [Quarto](https://quarto.org/docs/get-started/), then run from the repository root:

```bash
git clone https://github.com/derrickbaruga7/mapping-median-age-europe.git
cd mapping-median-age-europe
Rscript setup.R
quarto render mymap.qmd
```

Open `mymap.html` after rendering. The `.qmd` source is a Quarto document. An internet connection is required to install packages, retrieve Eurostat/GISCO data, and display the basemap tiles. On systems without a prebuilt `sf` package, its geospatial system libraries must also be installed.

Dependency installation is separate from rendering, so a render does not force a GitHub package reinstall. Package versions and remote datasets are not pinned; record both when reproducing a published result.

## Customize

Edit [mymap.qmd](mymap.qmd) to change the color palette, map view, or year selection. If changing the years, update both the data request and the fallback columns. Check regional code compatibility when changing the NUTS boundary vintage.

Data providers: [Eurostat](https://ec.europa.eu/eurostat) and [GISCO](https://ec.europa.eu/eurostat/web/gisco). Code is available under the [MIT License](LICENSE).
