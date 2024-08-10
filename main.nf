include { FASTQC } from './modules/fastqc.nf'
include { MULTIQC } from './modules/multiqc.nf'

data=Channel.fromFilePairs(params.reads, checkIfExists: true)
workflow {
    // fastqc
    FASTQC(data)
    // fastqc
    // FASTP(data)
    // mulitqc
    // MULTIQC(FASTQC.out, FASTP.out)
}