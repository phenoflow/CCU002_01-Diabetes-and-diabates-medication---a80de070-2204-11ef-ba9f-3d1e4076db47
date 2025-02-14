cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-diabetes-and-diabates-medication-uncontrolled---primary:
    run: ccu002_01-diabetes-and-diabates-medication-uncontrolled---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  ccu002_01-diabetes-and-diabates-medication-mauriac's---primary:
    run: ccu002_01-diabetes-and-diabates-medication-mauriac's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-uncontrolled---primary/output
  insulindependent-ccu002_01-diabetes-and-diabates-medication---primary:
    run: insulindependent-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-mauriac's---primary/output
  ccu002_01-diabetes-and-diabates-medication-mellitus---primary:
    run: ccu002_01-diabetes-and-diabates-medication-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: insulindependent-ccu002_01-diabetes-and-diabates-medication---primary/output
  neurologic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: neurologic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-mellitus---primary/output
  chronic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: chronic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: neurologic-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-ketoacidosis---primary:
    run: ccu002_01-diabetes-and-diabates-medication-ketoacidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chronic-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-brittle---primary:
    run: ccu002_01-diabetes-and-diabates-medication-brittle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-ketoacidosis---primary/output
  ketoacidotic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: ketoacidotic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-brittle---primary/output
  ccu002_01-diabetes-and-diabates-medication-oedema---primary:
    run: ccu002_01-diabetes-and-diabates-medication-oedema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ketoacidotic-ccu002_01-diabetes-and-diabates-medication---primary/output
  other-ccu002_01-diabetes-and-diabates-medication---primary:
    run: other-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-oedema---primary/output
  ccu002_01-diabetes-and-diabates-medication-associated---primary:
    run: ccu002_01-diabetes-and-diabates-medication-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-ccu002_01-diabetes-and-diabates-medication---primary/output
  angiopathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: angiopathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-associated---primary/output
  ccu002_01-diabetes-and-diabates-medication-invitation---primary:
    run: ccu002_01-diabetes-and-diabates-medication-invitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: angiopathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  oculopathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: oculopathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-invitation---primary/output
  ccu002_01-diabetes-and-diabates-medication-complicating---primary:
    run: ccu002_01-diabetes-and-diabates-medication-complicating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: oculopathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-ulcer---primary:
    run: ccu002_01-diabetes-and-diabates-medication-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-complicating---primary/output
  ccu002_01-diabetes-and-diabates-medication-maturityonset---primary:
    run: ccu002_01-diabetes-and-diabates-medication-maturityonset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-ulcer---primary/output
  retinal-ccu002_01-diabetes-and-diabates-medication---primary:
    run: retinal-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-maturityonset---primary/output
  ccu002_01-diabetes-and-diabates-medication-proteinuria---primary:
    run: ccu002_01-diabetes-and-diabates-medication-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: retinal-ccu002_01-diabetes-and-diabates-medication---primary/output
  neuropathic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: neuropathic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-proteinuria---primary/output
  advanced-ccu002_01-diabetes-and-diabates-medication---primary:
    run: advanced-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: neuropathic-ccu002_01-diabetes-and-diabates-medication---primary/output
  hypoglycaemic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: hypoglycaemic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: advanced-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-threatening---primary:
    run: ccu002_01-diabetes-and-diabates-medication-threatening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: hypoglycaemic-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication---primary:
    run: ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-threatening---primary/output
  ccu002_01-diabetes-and-diabates-medication-sensory---primary:
    run: ccu002_01-diabetes-and-diabates-medication-sensory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication---primary/output
  pancreatic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: pancreatic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-sensory---primary/output
  ccu002_01-diabetes-and-diabates-medication-history---primary:
    run: ccu002_01-diabetes-and-diabates-medication-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: pancreatic-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-lipodystrophy---primary:
    run: ccu002_01-diabetes-and-diabates-medication-lipodystrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-history---primary/output
  ccu002_01-diabetes-and-diabates-medication-examination---primary:
    run: ccu002_01-diabetes-and-diabates-medication-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-lipodystrophy---primary/output
  ccu002_01-diabetes-and-diabates-medication-preexisting---primary:
    run: ccu002_01-diabetes-and-diabates-medication-preexisting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-examination---primary/output
  ccu002_01-diabetes-and-diabates-medication-treated---primary:
    run: ccu002_01-diabetes-and-diabates-medication-treated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-preexisting---primary/output
  ischaemic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: ischaemic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-treated---primary/output
  polyneuropathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: polyneuropathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ischaemic-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-third---primary:
    run: ccu002_01-diabetes-and-diabates-medication-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: polyneuropathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-manifestation---primary:
    run: ccu002_01-diabetes-and-diabates-medication-manifestation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-third---primary/output
  retinopathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: retinopathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-manifestation---primary/output
  dietary-ccu002_01-diabetes-and-diabates-medication---primary:
    run: dietary-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: retinopathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-circulatory---primary:
    run: ccu002_01-diabetes-and-diabates-medication-circulatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: dietary-ccu002_01-diabetes-and-diabates-medication---primary/output
  cooccurrent-ccu002_01-diabetes-and-diabates-medication---primary:
    run: cooccurrent-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-circulatory---primary/output
  ccu002_01-diabetes-and-diabates-medication-hyperglycemia---primary:
    run: ccu002_01-diabetes-and-diabates-medication-hyperglycemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cooccurrent-ccu002_01-diabetes-and-diabates-medication---primary/output
  nonproliferative-ccu002_01-diabetes-and-diabates-medication---primary:
    run: nonproliferative-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-hyperglycemia---primary/output
  nonsteroid-ccu002_01-diabetes-and-diabates-medication---primary:
    run: nonsteroid-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: nonproliferative-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-gangrene---primary:
    run: ccu002_01-diabetes-and-diabates-medication-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: nonsteroid-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-second---primary:
    run: ccu002_01-diabetes-and-diabates-medication-second---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-gangrene---primary/output
  vitreous-ccu002_01-diabetes-and-diabates-medication---primary:
    run: vitreous-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-second---primary/output
  ccu002_01-diabetes-and-diabates-medication-vessel---primary:
    run: ccu002_01-diabetes-and-diabates-medication-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: vitreous-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-screening---primary:
    run: ccu002_01-diabetes-and-diabates-medication-screening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-vessel---primary/output
  ccu002_01-diabetes-and-diabates-medication-warning---primary:
    run: ccu002_01-diabetes-and-diabates-medication-warning---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-screening---primary/output
  ccu002_01-diabetes-and-diabates-medication-state---primary:
    run: ccu002_01-diabetes-and-diabates-medication-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-warning---primary/output
  ccu002_01-diabetes-and-diabates-medication-review---primary:
    run: ccu002_01-diabetes-and-diabates-medication-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-state---primary/output
  dominant-ccu002_01-diabetes-and-diabates-medication---primary:
    run: dominant-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-review---primary/output
  ccu002_01-diabetes-and-diabates-medication-cataract---primary:
    run: ccu002_01-diabetes-and-diabates-medication-cataract---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: dominant-ccu002_01-diabetes-and-diabates-medication---primary/output
  stable-ccu002_01-diabetes-and-diabates-medication---primary:
    run: stable-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-cataract---primary/output
  optic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: optic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: stable-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-microalbuminuria---primary:
    run: ccu002_01-diabetes-and-diabates-medication-microalbuminuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: optic-ccu002_01-diabetes-and-diabates-medication---primary/output
  exudative-ccu002_01-diabetes-and-diabates-medication---primary:
    run: exudative-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-microalbuminuria---primary/output
  fibrocalculous-ccu002_01-diabetes-and-diabates-medication---primary:
    run: fibrocalculous-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: exudative-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-remission---primary:
    run: ccu002_01-diabetes-and-diabates-medication-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: fibrocalculous-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-steroidinduced---primary:
    run: ccu002_01-diabetes-and-diabates-medication-steroidinduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-remission---primary/output
  ccu002_01-diabetes-and-diabates-medication-maturity---primary:
    run: ccu002_01-diabetes-and-diabates-medication-maturity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-steroidinduced---primary/output
  right-ccu002_01-diabetes-and-diabates-medication---primary:
    run: right-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-maturity---primary/output
  nonketotic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: nonketotic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: right-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-pregnancy---primary:
    run: ccu002_01-diabetes-and-diabates-medication-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: nonketotic-ccu002_01-diabetes-and-diabates-medication---primary/output
  mononeuropathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: mononeuropathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-pregnancy---primary/output
  ccu002_01-diabetes-and-diabates-medication-hand---primary:
    run: ccu002_01-diabetes-and-diabates-medication-hand---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: mononeuropathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-gastroparesis---primary:
    run: ccu002_01-diabetes-and-diabates-medication-gastroparesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-hand---primary/output
  ccu002_01-diabetes-and-diabates-medication-unspecified---primary:
    run: ccu002_01-diabetes-and-diabates-medication-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-gastroparesis---primary/output
  nephropathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: nephropathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-unspecified---primary/output
  ccu002_01-diabetes-and-diabates-medication-first---primary:
    run: ccu002_01-diabetes-and-diabates-medication-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: nephropathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-insulin---primary:
    run: ccu002_01-diabetes-and-diabates-medication-insulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-first---primary/output
  hyperosmolar-ccu002_01-diabetes-and-diabates-medication---primary:
    run: hyperosmolar-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-insulin---primary/output
  moderate-ccu002_01-diabetes-and-diabates-medication---primary:
    run: moderate-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: hyperosmolar-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-indicatorrelated---primary:
    run: ccu002_01-diabetes-and-diabates-medication-indicatorrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: moderate-ccu002_01-diabetes-and-diabates-medication---primary/output
  absent-ccu002_01-diabetes-and-diabates-medication---primary:
    run: absent-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-indicatorrelated---primary/output
  ccu002_01-diabetes-and-diabates-medication-education---primary:
    run: ccu002_01-diabetes-and-diabates-medication-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: absent-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-amyotrophy---primary:
    run: ccu002_01-diabetes-and-diabates-medication-amyotrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-education---primary/output
  neuropathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: neuropathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-amyotrophy---primary/output
  acute-ccu002_01-diabetes-and-diabates-medication---primary:
    run: acute-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: neuropathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-invite---primary:
    run: ccu002_01-diabetes-and-diabates-medication-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: acute-ccu002_01-diabetes-and-diabates-medication---primary/output
  renal-ccu002_01-diabetes-and-diabates-medication---primary:
    run: renal-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-invite---primary/output
  ccu002_01-diabetes-and-diabates-medication-programme---primary:
    run: ccu002_01-diabetes-and-diabates-medication-programme---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: renal-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-background---primary:
    run: ccu002_01-diabetes-and-diabates-medication-background---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-programme---primary/output
  ccu002_01-diabetes-and-diabates-medication-leprechaunism---primary:
    run: ccu002_01-diabetes-and-diabates-medication-leprechaunism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-background---primary/output
  lipoatrophic-ccu002_01-diabetes-and-diabates-medication---primary:
    run: lipoatrophic-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-leprechaunism---primary/output
  ccu002_01-diabetes-and-diabates-medication-deafness---primary:
    run: ccu002_01-diabetes-and-diabates-medication-deafness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: lipoatrophic-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-autoimmune---primary:
    run: ccu002_01-diabetes-and-diabates-medication-autoimmune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-deafness---primary/output
  arthropathy-ccu002_01-diabetes-and-diabates-medication---primary:
    run: arthropathy-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-autoimmune---primary/output
  multiple-ccu002_01-diabetes-and-diabates-medication---primary:
    run: multiple-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: arthropathy-ccu002_01-diabetes-and-diabates-medication---primary/output
  peripheral-ccu002_01-diabetes-and-diabates-medication---primary:
    run: peripheral-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: multiple-ccu002_01-diabetes-and-diabates-medication---primary/output
  severe-ccu002_01-diabetes-and-diabates-medication---primary:
    run: severe-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: peripheral-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-service---primary:
    run: ccu002_01-diabetes-and-diabates-medication-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: severe-ccu002_01-diabetes-and-diabates-medication---primary/output
  macular-ccu002_01-diabetes-and-diabates-medication---primary:
    run: macular-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-service---primary/output
  mixed-ccu002_01-diabetes-and-diabates-medication---primary:
    run: mixed-ccu002_01-diabetes-and-diabates-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: macular-ccu002_01-diabetes-and-diabates-medication---primary/output
  ccu002_01-diabetes-and-diabates-medication-malnutritionrelated---primary:
    run: ccu002_01-diabetes-and-diabates-medication-malnutritionrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: mixed-ccu002_01-diabetes-and-diabates-medication---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: ccu002_01-diabetes-and-diabates-medication-malnutritionrelated---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
