#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { CGPNGSQC } from '../../../modules/cgpngsqc/main.nf' addParams( options: [:] )

workflow test_cgpngsqc {
    
    input = [ [ id:'test', single_end:false ], // meta map
              file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true) ]

    CGPNGSQC ( input )
}
