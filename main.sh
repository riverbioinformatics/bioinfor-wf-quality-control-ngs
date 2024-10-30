nextflow run ./river-quality-control-ngs \
    -profile conda \
    --reads "workspace/<<fastqs_dir>>/*{1,2}.fq" \
    --workDir "workspace/work" \
    --outdir "workspace/<<output_folder>>/"