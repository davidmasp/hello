#!/usr/bin/env nextflow

cheers = Channel.from 0, 0, 0, 0, 123, 124

process sayHello {
  echo true
  maxRetries 10
  errorStrategy {
    if (task.exitStatus == 124){
      'retry'
    } else if (task.exitStatus == 123) {
      'ignore'
    } else {
      'terminate'
      }
    }
  input: 
    val x from cheers
  script:
    """
    test.R ${x}
    """
}
