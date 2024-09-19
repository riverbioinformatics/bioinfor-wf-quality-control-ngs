nextflow $RIVER_HOME/.workflow/river-quality-control-ngs \
    run main.nf \
    -profile singularity \
    --reads "<<fastqs_dir>>/*R{1,2}.fq"