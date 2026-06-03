# brainbank

Tree-root container for ingest AND the lab extension layer. For the prototype these two roles live together; under hippo the extension layer becomes a separate user-schema repo while the container stays.

URI: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank

Name: brainbank



## Classes

| Class | Description |
| --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |
| [NamedThing](NamedThing.md) | Local base for all entities |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Activity](Activity.md) | A PROV-style activity: something that occurs over time and acts on entities —... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Analysis](Analysis.md) | A computational process: the EXECUTION that consumes input Datasets and produ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[WorkflowRun](WorkflowRun.md) | A single execution of a WorkflowDefinition by a workflow engine (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Assay](Assay.md) | An assay run: the process node that consumes input Samples and produces Datas... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ArrayAssay](ArrayAssay.md) | Abstract base for microarray-based assays |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[GenotypingAssay](GenotypingAssay.md) | A SNP-array genotyping assay |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[MethylationArrayAssay](MethylationArrayAssay.md) | An array-based DNA methylation assay (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ImagingAssay](ImagingAssay.md) | A histology or IHC imaging assay that digitizes stained tissue sections |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SequencingAssay](SequencingAssay.md) | Abstract base for next-generation sequencing assays |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ATACSeqAssay](ATACSeqAssay.md) | An ATAC-seq chromatin-accessibility assay |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[GenomeSequencingAssay](GenomeSequencingAssay.md) | A whole-genome or whole-exome DNA sequencing assay |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[RNASeqAssay](RNASeqAssay.md) | An RNA sequencing assay (bulk or single-nucleus RNA-seq) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Process](Process.md) | A specimen-processing/transformation event (generalizes tissue_db:Transaction... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankBlood](BankBlood.md) | Bank a blood specimen: separate into typed aliquots (serum or plasma) and ret... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankCSF](BankCSF.md) | Bank cerebrospinal fluid: aliquot into frozen aliquots, centrifuge to recover... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankDura](BankDura.md) | Bank dura mater tissue, distributing specimens into fixed, frozen, and cultur... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankFixedBrain](BankFixedBrain.md) | Bank a chemically fixed (formalin-fixed) whole brain or hemisphere |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankFreshBrain](BankFreshBrain.md) | Bank a fresh (unfixed) brain: fix one hemisphere and freeze the rest as named... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankMuscle](BankMuscle.md) | Bank muscle tissue: distribute specimens into frozen and formalin-fixed fract... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankSkin](BankSkin.md) | Bank skin tissue: distribute specimens into frozen and fixed fractions, with ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankSpinalCord](BankSpinalCord.md) | Bank spinal cord tissue: distribute specimens into frozen and formalin-fixed ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BankVessels](BankVessels.md) | Bank blood vessel tissue specimens |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BlockDura](BlockDura.md) | Block dura mater tissue into smaller pieces for histology or molecular proces... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BlockFixedBrain](BlockFixedBrain.md) | Block a fixed (formalin-fixed) brain for histology embedding and sectioning |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BlockFixedHemisphere](BlockFixedHemisphere.md) | Block a fixed hemisphere into coronal slabs for systematic regional sampling |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BlockFrozenBrain](BlockFrozenBrain.md) | Block a frozen (unfixed) brain or brain region into pieces for further dissec... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BlockMuscle](BlockMuscle.md) | Block muscle tissue into smaller pieces for histology or molecular processing |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BlockSpinalCord](BlockSpinalCord.md) | Block spinal cord tissue into segments for histology or molecular processing |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CultureTissue](CultureTissue.md) | Abstract base for tissue-culture processes that establish cell cultures from ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CultureDura](CultureDura.md) | Establish a cell culture from dura mater tissue (typically fibroblast culture... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CultureSkin](CultureSkin.md) | Establish a cell culture from skin tissue (typically fibroblast culture) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DissectFixedBrain](DissectFixedBrain.md) | Dissect a fixed brain or brain region into named CNS sections for histology |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DissectFrozenBrain](DissectFrozenBrain.md) | Dissect a frozen brain or brain region into named CNS sections for molecular ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SectionFixedBrain](SectionFixedBrain.md) | Section (cut) a fixed brain or hemisphere into thin sections for histology |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SliceTissueToSlide](SliceTissueToSlide.md) | Base process for cutting tissue into slides and applying an IHC stain |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CreateBrainSlide](CreateBrainSlide.md) | Cut brain tissue and mount on a slide with an IHC stain applied |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CreateSpinalCordSlide](CreateSpinalCordSlide.md) | Cut spinal cord tissue and mount on a slide with an IHC stain applied |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[AnatomicalStructure](AnatomicalStructure.md) | A curated anatomical term |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Assessment](Assessment.md) | A pathology assessment of a person or sample (a reified observation) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Diagnosis](Diagnosis.md) | A disease diagnosis recorded for a donor |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Measurement](Measurement.md) | A generic neuropathology measure |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Association](Association.md) | Reified, Biolink-style relationship carrying scientific metadata only (never ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cohort](Cohort.md) | A named study group or research cohort to which donors may be assigned |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Container](Container.md) | A physical storage container (tube, box, freezer, etc |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Dataset](Dataset.md) | A data artifact (scientific unit) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ArrayDataset](ArrayDataset.md) | Abstract base for datasets derived from microarray assays |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[GenotypingDataset](GenotypingDataset.md) | SNP-array genotyping output dataset |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[MethylationDataset](MethylationDataset.md) | Array-based DNA methylation (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ImageDataset](ImageDataset.md) | Histology or immunohistochemistry (IHC) image dataset (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SequenceDataset](SequenceDataset.md) | Abstract base for datasets derived from high-throughput sequencing assays |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ATACSeqDataset](ATACSeqDataset.md) | Chromatin-accessibility (ATAC-seq) peak/signal output dataset |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[GenomeVariantDataset](GenomeVariantDataset.md) | Whole-genome or whole-exome sequencing variant call output dataset |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[RNASeqDataset](RNASeqDataset.md) | Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[File](File.md) | A single physical data file |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[FileSet](FileSet.md) | A named bundle of files that belong together (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Location](Location.md) | A physical storage location (room, freezer unit, building, site) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Parameter](Parameter.md) | A single named parameter/setting supplied to an analysis run |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Person](Person.md) | A human individual (was tissue_db:Case / draft "Subject") |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Donor](Donor.md) | A deceased individual who donated tissue to the brain bank |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Protocol](Protocol.md) | An SOP or method document (was tissue_db:SOP) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[WorkflowDefinition](WorkflowDefinition.md) | A reusable, versioned executable pipeline DEFINITION (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Sample](Sample.md) | An abstract physical specimen obtained from a donor |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[LiquidSample](LiquidSample.md) | A liquid biological specimen or extract (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Blood](Blood.md) | A blood specimen (serum, plasma, or whole blood aliquot) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cells](Cells.md) | A cell suspension specimen (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CSF](CSF.md) | Cerebrospinal fluid specimen |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DNA](DNA.md) | A DNA extract prepared from tissue or cells |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[RNA](RNA.md) | An RNA extract prepared from tissue or cells |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SolidSample](SolidSample.md) | A solid or semi-solid tissue specimen (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BloodVessel](BloodVessel.md) | A blood vessel tissue specimen |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Brain](Brain.md) | A whole brain specimen (unfixed or fixed), prior to regional dissection |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CNSSection](CNSSection.md) | A section of central-nervous-system tissue; base class for named brain region... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cerebellum](Cerebellum.md) | A cerebellum tissue specimen (hindbrain structure coordinating motor activity... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cerebrum](Cerebrum.md) | A cerebrum tissue specimen (largest part of the brain; includes cortex and su... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ChoroidPlexus](ChoroidPlexus.md) | A choroid plexus tissue specimen (structure producing cerebrospinal fluid) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Hemisphere](Hemisphere.md) | A cerebral hemisphere (left or right half of the cerebrum) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Medulla](Medulla.md) | A medulla oblongata tissue specimen (brainstem region controlling autonomic f... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[OlfactoryBulb](OlfactoryBulb.md) | An olfactory bulb tissue specimen (forebrain structure involved in smell proc... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[PinealGland](PinealGland.md) | A pineal gland tissue specimen (epithalamic structure producing melatonin) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Pituitary](Pituitary.md) | A pituitary gland tissue specimen (master endocrine gland at the base of the ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Pons](Pons.md) | A pons tissue specimen (brainstem region connecting cerebellum to cerebrum) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SpinalCord](SpinalCord.md) | A spinal cord tissue specimen |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SpinalCordBlock](SpinalCordBlock.md) | A spinal cord tissue block prepared for further sectioning or embedding |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SubstantiaNigra](SubstantiaNigra.md) | A substantia nigra tissue specimen (midbrain structure; dopaminergic neurons ... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CSFPellet](CSFPellet.md) | Cell pellet recovered from centrifuged cerebrospinal fluid (CSF) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Dura](Dura.md) | Dura mater specimen (outermost meningeal layer surrounding the brain and spin... |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[DuraBlock](DuraBlock.md) | A dura mater tissue block prepared for further processing |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Muscle](Muscle.md) | A skeletal muscle tissue specimen |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[MuscleBlock](MuscleBlock.md) | A muscle tissue block prepared for further processing |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Section](Section.md) | A cut tissue section with a recorded dissection orientation |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CoronalSection](CoronalSection.md) | A tissue section cut in the coronal (frontal) plane |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[HorizontalSection](HorizontalSection.md) | A tissue section cut in the horizontal (axial/transverse) plane |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SagittalSection](SagittalSection.md) | A tissue section cut in the sagittal plane (parallel to the midline) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Skin](Skin.md) | A skin tissue specimen |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[SpinalCordSlide](SpinalCordSlide.md) | A stained histology slide cut from spinal-cord tissue |
| [Quantity](Quantity.md) | Abstract base for a numeric measurement paired with a unit |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Concentration](Concentration.md) | A concentration measurement (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Mass](Mass.md) | A mass measurement (e |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Volume](Volume.md) | A volume measurement (e |



## Slots

| Slot | Description |
| --- | --- |
| [age_at_death](age_at_death.md) | Age of the donor at time of death, in years |
| [analyses](analyses.md) | Computational analyses, including engine-driven WorkflowRun executions |
| [anatomical_site](anatomical_site.md) | Anatomical region(s) from which this sample was collected |
| [anatomical_structures](anatomical_structures.md) | Curated anatomy terms referenced by samples (reference data for now) |
| [array_platform](array_platform.md) | Microarray platform used to generate this dataset |
| [assay_type](assay_type.md) | OBI assay type that generated this dataset |
| [assays](assays.md) | Assay process nodes linking samples to datasets |
| [asserted_on](asserted_on.md) | Date on which this association was first asserted or recorded |
| [assessments](assessments.md) | Pathology assessments (measurements, diagnoses) for donors and samples |
| [blocked_spinal_cord](blocked_spinal_cord.md) | Spinal cord block produced by this blocking process |
| [blood_sample](blood_sample.md) | Blood aliquots collected and banked |
| [blood_sample_type](blood_sample_type.md) | Type of blood fraction collected (serum or plasma) |
| [brain](brain.md) | The fixed brain specimen being banked |
| [category](category.md) | Names the concrete class of this instance |
| [cell_type](cell_type.md) | Cell Ontology type of the cells in this suspension |
| [cells](cells.md) | Cell suspension produced from the dura culture |
| [checksum](checksum.md) | Checksum value for file integrity and identity verification |
| [checksum_algorithm](checksum_algorithm.md) | Algorithm used to compute the checksum (e |
| [choroid_plexus](choroid_plexus.md) | Choroid plexus specimen(s) snap-frozen for molecular assays |
| [cohort](cohort.md) | Study cohort(s) this individual belongs to |
| [cohorts](cohorts.md) | Study cohorts referenced by donors |
| [compute_environment](compute_environment.md) | Free-text description of where/how it ran (cluster, cloud, profile) |
| [concentration](concentration.md) | Concentration of the RNA extract (e |
| [container](container.md) | The storage container currently holding this sample |
| [container_image](container_image.md) | Default/declared container image or digest for the pipeline, if any |
| [containers](containers.md) | Physical storage containers (vials, boxes, freezers, etc |
| [culture_media](culture_media.md) | Culture medium used if skin tissue is being prepared for cell culture |
| [data_location](data_location.md) | Optional convenience pointer to the dataset root (e |
| [dataset_id](dataset_id.md) | Business identifier for this dataset (human-facing ID or accession) |
| [datasets](datasets.md) | Scientific data artifacts (expression matrices, VCFs, images, etc |
| [derived_from](derived_from.md) | Parent specimen this sample was produced from |
| [description](description.md) | Free-text narrative description of the entity |
| [disease](disease.md) | The MONDO disease term for this diagnosis |
| [dna](dna.md) | DNA extract obtained during brain banking |
| [document_location](document_location.md) | URL, directory, or other location where the SOP can be found |
| [donor](donor.md) | The donor whose brain is being banked |
| [donors](donors.md) | Registered tissue donors |
| [dura_blocks](dura_blocks.md) | Dura blocks produced by this blocking process |
| [ended_at](ended_at.md) | Date-time when this analysis run finished (successfully or with failure) |
| [engine](engine.md) | Workflow engine the pipeline is written for |
| [engine_version](engine_version.md) | Version of the workflow engine used for THIS run (e |
| [evidence_type](evidence_type.md) | Type of evidence supporting this association (free text; formalize later) |
| [file_format](file_format.md) | Bioinformatics format of the file |
| [file_sets](file_sets.md) | Named file bundles (e |
| [files](files.md) | Individual data files backing datasets |
| [fixed_dura](fixed_dura.md) | Dura mater specimen(s) fixed in formalin |
| [fixed_hemisphere](fixed_hemisphere.md) | The hemisphere fixed in formalin for histology |
| [fixed_muscle](fixed_muscle.md) | Muscle specimen(s) fixed in formalin |
| [fixed_skin](fixed_skin.md) | Skin specimen(s) fixed in formalin |
| [fixed_spinal_cord](fixed_spinal_cord.md) | Spinal cord specimen(s) fixed in formalin |
| [fma_xref](fma_xref.md) | FMA cross-reference(s), used when Uberon is not specific enough |
| [format](format.md) | Physical format of this solid specimen (e |
| [frozen_cerebellum](frozen_cerebellum.md) | Cerebellum specimen(s) snap-frozen for molecular assays |
| [frozen_cerebrum](frozen_cerebrum.md) | Cerebrum specimen(s) snap-frozen for molecular assays |
| [frozen_csf](frozen_csf.md) | CSF aliquots snap-frozen for storage |
| [frozen_dura](frozen_dura.md) | Dura mater specimen(s) snap-frozen |
| [frozen_medulla](frozen_medulla.md) | Medulla oblongata specimen(s) snap-frozen for molecular assays |
| [frozen_muscle](frozen_muscle.md) | Muscle specimen(s) snap-frozen for storage |
| [frozen_olfactory_bulb](frozen_olfactory_bulb.md) | Olfactory bulb specimen snap-frozen for molecular assays |
| [frozen_pineal_gland](frozen_pineal_gland.md) | Pineal gland specimen snap-frozen for molecular assays |
| [frozen_pons](frozen_pons.md) | Pons specimen(s) snap-frozen for molecular assays |
| [frozen_skin](frozen_skin.md) | Skin specimen(s) snap-frozen for storage |
| [frozen_spinal_cord](frozen_spinal_cord.md) | Spinal cord specimen(s) snap-frozen for storage |
| [frozen_substantia_nigra](frozen_substantia_nigra.md) | Substantia nigra specimen(s) snap-frozen for molecular assays |
| [frozen_vessels](frozen_vessels.md) | Blood vessel specimen(s) snap-frozen for storage |
| [gene_model](gene_model.md) | Annotation/gene model used for quantification (e |
| [genome_build](genome_build.md) | Reference genome assembly used for alignment or variant calling |
| [hemisphere](hemisphere.md) | Fixed hemisphere being sectioned, if applicable |
| [id](id.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later |
| [image_format](image_format.md) | File format of the image (e |
| [input_datasets](input_datasets.md) | Datasets consumed by this analysis |
| [inputs](inputs.md) | Input specimens consumed or transformed by this process |
| [location](location.md) | Physical location where this container is stored |
| [location_type](location_type.md) | Type of location (Site, Building, or Room) |
| [locations](locations.md) | Physical storage locations (rooms, buildings, sites) |
| [magnification](magnification.md) | Objective magnification used during scanning (e |
| [mass](mass.md) | Mass of the specimen |
| [measure_name](measure_name.md) | The neuropathology staging scale or measure being recorded (e |
| [media_dura](media_dura.md) | Dura mater specimen(s) placed in culture medium |
| [media_type](media_type.md) | IANA media (MIME) type, e |
| [method](method.md) | Method or approach used to establish this association |
| [muscle_blocks](muscle_blocks.md) | Muscle blocks produced by this blocking process |
| [n_peaks](n_peaks.md) | Number of chromatin-accessibility peaks called in this dataset |
| [n_probes](n_probes.md) | Number of CpG probes passing QC in this dataset |
| [n_reads](n_reads.md) | Total number of sequencing reads (or read pairs) in this dataset |
| [n_variants](n_variants.md) | Total number of variant calls in this dataset |
| [name](name.md) | Human-readable label for the entity |
| [new_fixed_samples](new_fixed_samples.md) | CNS sections produced by this dissection |
| [new_samples](new_samples.md) | CNS sections produced by this dissection |
| [notes](notes.md) | Free-text notes about blocking decisions (e |
| [object](object.md) | The entity playing the object role in this relationship |
| [ontology_term](ontology_term.md) | The bound Uberon term for this anatomical structure |
| [orientation](orientation.md) | Anatomical plane in which this section was cut |
| [other_sections](other_sections.md) | Any additional tissue sections collected during banking |
| [output_datasets](output_datasets.md) | Datasets produced by this analysis |
| [outputs](outputs.md) | Specimens produced as output of this process |
| [paired_end](paired_end.md) | Whether this assay used paired-end sequencing (true) or single-end (false) |
| [parameters](parameters.md) | Parameters/settings supplied to the run |
| [parent](parent.md) | Parent container this container is nested within (e |
| [parent_analysis](parent_analysis.md) | Enclosing analysis, if this is a sub-step |
| [parent_location](parent_location.md) | The parent location this location belongs to (e |
| [part_of](part_of.md) | The parent anatomical structure this structure is a part of (mereological rel... |
| [peak_caller](peak_caller.md) | Name and version of the peak-calling software used (e |
| [pellet](pellet.md) | Cell pellet recovered by centrifugation of the CSF |
| [performed_on](performed_on.md) | Date the activity was carried out |
| [person](person.md) | The person (donor) this assessment is about, if applicable |
| [person_id](person_id.md) | Business identifier (human-facing person ID) |
| [pituitary](pituitary.md) | Pituitary gland specimen snap-frozen for molecular assays |
| [pixel_size_um](pixel_size_um.md) | Physical size of one pixel in micrometers at the stated magnification |
| [platform](platform.md) | Sequencing instrument platform used (e |
| [post_mortem_interval_hours](post_mortem_interval_hours.md) | Post-mortem interval (PMI): time elapsed between death and tissue collection,... |
| [predicate](predicate.md) | Relation Ontology predicate, e |
| [processes](processes.md) | Specimen-processing and transformation events |
| [produced_by](produced_by.md) | The processing event that created this sample |
| [protocol](protocol.md) | The SOP/method this activity followed |
| [quantification](quantification.md) | Quantification unit reported in the expression matrix (e |
| [read_length](read_length.md) | Read length in base pairs (for paired-end reads, the per-read length) |
| [remainder](remainder.md) | Leftover dura mater tissue after distribution |
| [residual_stock](residual_stock.md) | Residual CSF stock after aliquoting |
| [rna](rna.md) | RNA extract obtained during brain banking |
| [role](role.md) | What this set of files represents within the dataset |
| [sample](sample.md) | The tissue sample this assessment is about, if applicable |
| [sample_id](sample_id.md) | Business identifier (human-facing sample/specimen ID) |
| [samples](samples.md) | All tissue and fluid samples in this record set |
| [scanner](scanner.md) | Scanner model used for slide digitization (e |
| [sequencing_strategy](sequencing_strategy.md) | Sequencing strategy used to generate this variant dataset (WGS, WES, or targe... |
| [sex](sex.md) | Biological sex of the individual (free text; use standard values such as male... |
| [size_bytes](size_bytes.md) | Size of the file in bytes |
| [species](species.md) | Species of the individual |
| [spinal_cord_slides](spinal_cord_slides.md) | Stained spinal cord slides produced by this process |
| [stain](stain.md) | IHC stain applied to the tissue section on the slide |
| [started_at](started_at.md) | Date-time when this analysis run started execution |
| [status](status.md) | Execution status of this analysis run |
| [subject](subject.md) | The entity playing the subject role in this relationship |
| [type](type.md) | Type of storage container (e |
| [unit](unit.md) | Unit of mass for this measurement |
| [uri](uri.md) | Location of the file (path, URL, or DRS id) |
| [value](value.md) | Numeric magnitude of the measurement |
| [value_numeric](value_numeric.md) | Numeric value of the measurement (e |
| [value_text](value_text.md) | Text value of the measurement, for categorical or free-text scores |
| [variant_caller](variant_caller.md) | Name and version of the variant-calling software used (e |
| [version](version.md) | Version string for this SOP or method document |
| [volume](volume.md) | Volume of the liquid specimen |
| [workflow_definitions](workflow_definitions.md) | Reusable pipeline definitions (recipes) referenced by workflow runs |


## Enumerations

| Enumeration | Description |
| --- | --- |
| [AnalysisStatus](AnalysisStatus.md) | Execution status of a computational analysis run |
| [AnatomicalSite](AnatomicalSite.md) | Anatomical structures drawn from the Uberon multi-species anatomy ontology |
| [ArrayPlatform](ArrayPlatform.md) | Microarray platforms used for genotyping and methylation assays |
| [AssayType](AssayType.md) | Assay types drawn from the Ontology for Biomedical Investigations (OBI), anch... |
| [BloodSampleType](BloodSampleType.md) | Fractions of blood collected from donors for biobanking |
| [CellType](CellType.md) | Cell types from the Cell Ontology (CL), anchored at the root cell term CL:000... |
| [ChecksumAlgorithm](ChecksumAlgorithm.md) | Cryptographic or hash algorithms used for file checksums |
| [ConcentrationUnit](ConcentrationUnit.md) | Units of mass-per-volume concentration used for nucleic-acid and protein extr... |
| [ContainerType](ContainerType.md) | Types of physical storage containers used in the brain bank |
| [CultureMedia](CultureMedia.md) | Culture medium used in tissue-culture processes |
| [Disease](Disease.md) | Disease terms drawn from the Mondo Disease Ontology (MONDO), anchored at the ... |
| [DissectionOrientation](DissectionOrientation.md) | Anatomical plane in which a brain tissue section was cut |
| [FileFormat](FileFormat.md) | Common bioinformatics file formats |
| [FileRole](FileRole.md) | The role a file or file-set plays within a dataset |
| [GenomeBuild](GenomeBuild.md) | Reference genome assembly versions used for alignment and variant annotation |
| [ImageFormat](ImageFormat.md) | Digital image file formats used for whole-slide and histology images |
| [LiquidSampleFormat](LiquidSampleFormat.md) | Format categories for liquid biological specimens and extracts |
| [LocationType](LocationType.md) | Hierarchical categories of physical storage locations |
| [MassUnit](MassUnit.md) | SI-derived units of mass used for specimen and extract measurements |
| [MeasureType](MeasureType.md) | STUB — to be populated once pathology scope is defined (e |
| [RNAQuantification](RNAQuantification.md) | Units or methods used to report RNA expression levels |
| [SequencingPlatform](SequencingPlatform.md) | Next-generation sequencing instrument platforms |
| [SequencingStrategy](SequencingStrategy.md) | DNA sequencing strategies that determine genomic coverage |
| [SolidSampleFormat](SolidSampleFormat.md) | Physical format categories for solid tissue specimens |
| [Species](Species.md) | Taxonomic species of a Person, drawn from the NCBI Taxonomy |
| [StainType](StainType.md) | Immunohistochemical (IHC) stains used in histology slide preparation |
| [VolumeUnit](VolumeUnit.md) | SI-derived units of volume used for liquid sample and aliquot measurements |
| [WorkflowEngine](WorkflowEngine.md) | Workflow execution engines supported for WorkflowDefinition/WorkflowRun |


## Types

| Type | Description |
| --- | --- |
| [Boolean](Boolean.md) | A binary (true or false) value |
| [Curie](Curie.md) | a compact URI |
| [Date](Date.md) | a date (year, month and day) in an idealized calendar |
| [DateOrDatetime](DateOrDatetime.md) | Either a date or a datetime |
| [Datetime](Datetime.md) | The combination of a date and time |
| [Decimal](Decimal.md) | A real number with arbitrary precision that conforms to the xsd:decimal speci... |
| [Double](Double.md) | A real number that conforms to the xsd:double specification |
| [Float](Float.md) | A real number that conforms to the xsd:float specification |
| [Integer](Integer.md) | An integer |
| [Jsonpath](Jsonpath.md) | A string encoding a JSON Path |
| [Jsonpointer](Jsonpointer.md) | A string encoding a JSON Pointer |
| [Ncname](Ncname.md) | Prefix part of CURIE |
| [Nodeidentifier](Nodeidentifier.md) | A URI, CURIE or BNODE that represents a node in a model |
| [Objectidentifier](Objectidentifier.md) | A URI or CURIE that represents an object in the model |
| [Sparqlpath](Sparqlpath.md) | A string encoding a SPARQL Property Path |
| [String](String.md) | A character string |
| [Time](Time.md) | A time object represents a (local) time of day, independent of any particular... |
| [Uri](Uri.md) | a complete URI |
| [Uriorcurie](Uriorcurie.md) | a URI or a CURIE |


## Subsets

| Subset | Description |
| --- | --- |
