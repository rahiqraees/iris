FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-lock.yml /tmp/conda-lock.yml

RUN mamba install --name base conda-lock -y \
    && conda-lock install --name iris_classifier --force-platform linux-64 /tmp/conda-lock.yml \
    && mamba clean --all -y -f \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"

# Make iris_classifier the default environment
RUN echo "conda activate iris_classifier" >> ~/.bashrc

ENV PATH="/opt/conda/envs/iris_classifier/bin:$PATH"
ENV CONDA_DEFAULT_ENV=iris_classifier