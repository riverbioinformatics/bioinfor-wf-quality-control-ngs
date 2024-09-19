include { FASTQC } from './modules/fastqc.nf'
include { MULTIQC } from './modules/multiqc.nf'

data=Channel.fromFilePairs(params.reads, checkIfExists: true)
workflow {
    // fastqc
    FASTQC(data)
    // mulitqc
    MULTIQC(FASTQC.out.all.collect())
}