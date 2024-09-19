nextflow \
    run main.nf \
    -profile docker \
    --reads "data/*R{1,2}.fq"