#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { BIOBAMBAM2_FASTQTOBAM } from '../../../../modules/biobambam2/fastqtobam/main.nf' addParams( options: [:] )

workflow test_biobambam2_fastqtobam {
    
    input = [ [ id:'test', single_end:false ], // meta map
              file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true) ]

    BIOBAMBAM2_FASTQTOBAM ( input )
}
