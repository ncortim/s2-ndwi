# Sentinel-2 NDWI Computation Tool

This Python tool calculates the Normalized Difference Water Index (NDWI)
from Sentinel-2 satellite imagery and outputs the result as a Cloud Optimized 
GeoTIFF (COG). The tool is designed to work with Sentinel-2 Level-2A data
stored in a directory with the extension .SAFE, specifically targeting the 
10m resolution bands.


## Features

- **Automatic Band Search:** The tool automatically searches for the green (B03)
and near-infrared (B08) bands within a specified Sentinel-2 SAFE directory.

- **NDWI Calculation:** Computes NDWI using the formula:

  NDWI = (Green - NIR) \ (Green + NIR)
  
- **Cloud Optimized GeoTIFF (COG) Output:** Saves the NDWI result as a Cloud 
Optimized GeoTIFF with efficient tiling and compression for better performance
in cloud environments.

## Requirements

- Python 3.10+
- [GDAL](https://gdal.org/) (Geospatial Data Abstraction Library)
- [Click](https://click.palletsprojects.com/) (Command-line interface creation toolkit)
- [NumPy](https://numpy.org/)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/ncortim/s2-ndwi.git
    cd s2-ndwi
    ```

## Usage

### Standalone script

To run the NDWI computation tool, use the following command in your terminal:

```bash
python s2-2a-10m-ndwi.py /path/to/Sentinel2_SAFE_directory /path/to/output_directory desired-file-name
```

#### Arguments:
- `/path/to/Sentinel2_SAFE_directory`: The path to the Sentinel-2 SAFE directory containing the Level-2A data.
- `/path/to/output_directory`: The path where the output Cloud Optimized GeoTIFF will be saved.
- `desired-file-name`: The name how you want the output file to be called

#### Example:

```bash
python s2-2a-10m-ndwi.py /data/sentinel2/SAFE /output/ndvi my-new-ndwi
```

This command will create an NDWI COG file named `my-new-ndwi.tif` in the `/output/ndwi` directory.

### Docker
1. update paths in file `wps-properties`. This file is used to set the needed 
environment variables which specify the IO paths
2. update paths in docker-compose bind mounts (volumes)
3. execute docker compose command:

```bash
docker compose up
# or 
docker compose up -d
```
## Contributing

Contributions are welcome! Please fork this repository and submit a pull 
request with your improvements or bug fixes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For any questions or issues, please open an issue on GitHub or contact the maintainer.
