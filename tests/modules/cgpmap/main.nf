#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { CGPMAP } from '../../../modules/cgpmap/main.nf' addParams( options: [:] )

workflow test_cgpmap {
    
    input = [ [ id:'test', single_end:false ], // meta map
              file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true) ]

    CGPMAP ( input )
}
