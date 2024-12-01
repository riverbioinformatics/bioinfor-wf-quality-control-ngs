process FASTQC {
    tag "$meta"
    label 'process_single'

    conda "${moduleDir}/environment.yml"
    container "biocontainers/fastqc:v0.11.9_cv8"

    input:
    tuple val(meta), path(reads)

    output:
    tuple val(meta), path("*.html"), emit: html
    tuple val(meta), path("*.zip") , emit: zip
    path("*{html,zip}"), emit: all

    script:
    """
    mkdir -p .cache
    export XDG_CACHE_HOME=`pwd`/.cache
    fastqc --threads $task.cpus ${reads}
    """
}