# Iris Species Classifier

  - author: Rahiq Raees

Demo of a data analysis project for DSCI 522 (Data Science workflows); a
course in the Master of Data Science program at the University of
British Columbia.

## About

Here we attempt to build a classification model using the k-nearest 
neighbours algorithm which can use Iris flower morphological measurements 
to predict the species of a newly observed Iris flower (*Iris setosa*, 
*Iris versicolor*, or *Iris virginica*). 
Our final classifier performed well on an unseen test data set, 
with an overall accuracy of approximately 0.93. On the 45 test data cases, 
it correctly predicted 42. 
The model correctly classified all *Iris setosa* samples perfectly, 
while showing some confusion between *Iris versicolor* and *Iris virginica* 
due to their overlapping morphological characteristics.
These results align with Fisher's original findings and confirm 
the utility of sepal and petal measurements as reliable features 
for botanical classification tasks.

The data set that was used in this project is the classic Iris flower 
dataset created by Edgar Anderson and popularized by R.A. Fisher 
(Fisher 1936). It was sourced from the UCI Machine Learning Repository 
(Dua and Graff 2017) and can be found
[here](https://archive.ics.uci.edu/dataset/53/iris),
specifically [this
file](https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data).
Each row in the data set represents measurements from a single Iris flower 
specimen, including four morphological measurements (sepal length, sepal width, 
petal length, and petal width in centimeters) and the species classification.

## Report

The final report can be found
[here](https://github.com/rahiqraees/iris/blob/main/notebooks/iris_species_classifier_report.ipynb).

## Usage

### Using Docker (Recommended)

To run this analysis using Docker:

1. Install and run [Docker Desktop](https://www.docker.com/products/docker-desktop/)

2. Clone this repository and navigate to it:
   ```bash
   git clone https://github.com/rahiqraees/iris.git
   cd iris
   ```

3. Run the following command from the root of this repository:
   ```bash
   docker-compose up
   ```

4. Open the URL that appears in the terminal (e.g., `http://127.0.0.1:8888/lab?token=...`) in your browser.

5. Navigate to `work/notebooks/iris_species_classifier_report.ipynb` and select the **Python (iris_classifier)** kernel.

6. Under the "Kernel" menu click "Restart Kernel and Run All Cells...".

7. To stop the container, press `Ctrl+C` in the terminal, then run:
   ```bash
   docker-compose down
   ```

### Without Docker

First time running the project, run the following from the root of this repository:

```bash
conda-lock install --name iris_classifier conda-lock.yml
```

To run the analysis, run the following from the root of this repository:

```bash
conda activate iris_classifier
jupyter lab 
```

Open `notebooks/iris_species_classifier_report.ipynb` in Jupyter Lab
and under Switch/Select Kernel choose 
"Python [conda env:iris_classifier]".

Next, under the "Kernel" menu click "Restart Kernel and Run All Cells...".

## Dependencies

- [Docker](https://www.docker.com/) (recommended), or
- `conda` (version 23.9.0 or higher)
- `conda-lock` (version 2.5.7 or higher)
- Python and packages listed in [`environment.yml`](environment.yml)

## License

The Iris Species Classifier report contained herein is licensed under the
[Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) License](https://creativecommons.org/licenses/by-nc-sa/4.0/).
See [the license file](LICENSE.md) for more information. If
re-using/re-mixing please provide attribution and link to this webpage.

The software code contained within this repository is licensed under the
MIT license. See [the license file](LICENSE.md) for more information.

## References

Dua, Dheeru, and Casey Graff. 2017. "UCI Machine Learning Repository."
University of California, Irvine, School of Information; Computer
Sciences. <http://archive.ics.uci.edu/ml>.

Fisher, R.A. 1936. "The Use of Multiple Measurements in Taxonomic Problems." 
*Annals of Eugenics*, 7(2): 179-188. 
<https://doi.org/10.1111/j.1469-1809.1936.tb02137.x>.
