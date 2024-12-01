nextflow \
    run main.nf \
    -profile singularity \
    --reads "data/*{1,2}.fq"