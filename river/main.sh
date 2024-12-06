sleep 1
echo "Start analysis"
nextflow run ./river-quality-control-ngs \
    -profile singularity \
    --reads "workspace<<fastqs_dir>>*{1,2}.fq" \
    -work-dir "workspace/work" \
    --outdir "workspace<<output_folder>>"