# Dockerfile for the iris species classifier project

FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-lock.yml /tmp/conda-lock.yml

# Detect platform and install appropriate packages
RUN mamba install --name base conda-lock -y \
    && if [ "$(uname -m)" = "aarch64" ]; then \
         conda-lock install --name iris_classifier --force-platform linux-aarch64 /tmp/conda-lock.yml; \
       else \
         conda-lock install --name iris_classifier --force-platform linux-64 /tmp/conda-lock.yml; \
       fi \
    && mamba clean --all -y -f \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"

# Register the iris_classifier kernel
RUN /opt/conda/envs/iris_classifier/bin/python -m ipykernel install --user --name iris_classifier --display-name "Python (iris_classifier)"

# Make iris_classifier the default environment
RUN echo "conda activate iris_classifier" >> ~/.bashrc

ENV PATH="/opt/conda/envs/iris_classifier/bin:$PATH"
ENV CONDA_DEFAULT_ENV=iris_classifier




