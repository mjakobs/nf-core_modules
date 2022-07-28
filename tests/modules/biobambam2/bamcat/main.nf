#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { BIOBAMBAM2_BAMCAT } from '../../../../modules/biobambam2/bamcat/main.nf' addParams( options: [:] )

workflow test_biobambam2_bamcat {
    
    input = [ [ id:'test', single_end:false ], // meta map
              file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true) ]

    BIOBAMBAM2_BAMCAT ( input )
}
