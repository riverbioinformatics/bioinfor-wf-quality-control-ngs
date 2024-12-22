sleep 1
echo "Start analysis"
nextflow run ./analysis \
    -profile singularity \
    --reads "workspace<<fastqs_dir>>*{1,2}.fq" \
    --outdir "workspace<<output_folder>>"