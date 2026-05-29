FROM quay.io/jupyter/scipy-notebook:python-3.11

USER root

# Install Java (e.g., OpenJDK 11)
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install dbt packages using the image's built-in Python 3.11
RUN pip install dbt-core==1.8.8 dbt-trino==1.8.3 dbt-postgres==1.8.2

# Register Python 3.11 kernel in Jupyter
RUN python -m ipykernel install --user --name=python3.11 --display-name "Python 3.11"

RUN chown -R jovyan:users /home/jovyan/.local

