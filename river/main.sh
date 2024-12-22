sleep 1
echo "Start analysis"
nextflow run ./analysis \
    -profile conda \
    --reads "workspace<<fastqs_dir>>*{1,2}.fq" \
    --outdir "workspace<<output_folder>>"