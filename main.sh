nextflow run river-quality-control-ngs \
    -profile singularity \
    --reads "workspace/<<fastqs_dir>>/*R{1,2}.fq"
    -workDir "workspace/work" \
    --outdir "workspace/<<uuid_job_id>>/results"