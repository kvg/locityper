FROM mambaorg/micromamba:1.5.8

LABEL org.opencontainers.image.authors="timofey.prodanov@hhu.de"
LABEL version="0.19.1"
LABEL description="Targeted genotyper for complex polymorphic loci from short and long read WGS."

# Create a non-root user
USER root
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
        ca-certificates curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch to micromamba user
USER micromamba

# Install locityper from bioconda
RUN micromamba install -y -c bioconda -c conda-forge locityper && \
    micromamba clean --all