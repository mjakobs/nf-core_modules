#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FASTQSPLIT } from '../../../modules/fastqsplit/main.nf' addParams( options: [:] )

workflow test_fastqsplit {

    input = [ [ id:'test', single_end:false ], // meta map
                [ file(params.test_data['sarscov2']['illumina']['test_1_fastq_gz'], checkIfExists: true) ] ]

    FASTQSPLIT ( input )
}
