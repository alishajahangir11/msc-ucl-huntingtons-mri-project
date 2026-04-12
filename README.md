# MRI Biomarkers in Huntington's Disease

## Background & Motivation

Huntington's disease (HD) is a fatal autosomal dominant neurodegenerative disorder caused by a CAG repeat expansion in the *HTT* gene. Striatal atrophy, particularly of the caudate and putamen, is the field's established MRI biomarker of HD progression, detectable years before clinical motor onset. However, emerging gene therapies which involve direct neurosurgical infusion of AAV5 vectors into the caudate and putamen via convection-enhanced delivery. Post-surgical MRI signal changes at these sites, including T2 hyperintensities and structural distortion, may reflect procedural effects rather than disease-related atrophy, confounding the very biomarkers trials rely on.

This project addresses that problem directly: by identifying **non-striatal brain regions** that show significant longitudinal atrophy in HD gene-expanded (HDGE) individuals nearly two decades before predicted motor onset, it aims to establish complementary MRI outcome measures that remain interpretable post-intervention.

This work was conducted within the **HD-YAS (Huntington's Disease Young Adult Study)** research programme at the UCL Huntington's Disease Centre, and formed the basis of my MSc dissertation in Clinical Neuroscience.

> For the primary HD-YAS cohort paper, see: Scahill et al. (2025), *Nature Medicine*.

---

## Aims

1. Identify brain regions with significant between-group differences in annualised atrophy rates between HDGE individuals and healthy controls
2. Rank candidate non-striatal biomarkers by effect size (Cohen's d)
3. Examine associations between regional atrophy rates, CAP100 disease burden scores, and HD-ISS staging

---

## Cohort

| | HDGE | Controls |
|---|---|---|
| N | 54 | 34 |
| Age range | 18–40 | 18–40 |
| Follow-up interval | ~4.5 years | ~4.5 years |
| Scanner | Siemens PRISMA 3T, Wellcome Centre for Human Neuroimaging, UCL | |
| Sequence | 3D MP-RAGE (T1-weighted), TR=2530ms, TE=3.34ms, TI=1100ms | |

HDGE participants had confirmed CAG ≥ 40, Disease Burden Score ≤ 240, and no signs of manifest disease (≥18 years from predicted motor diagnosis). Controls had no HD family history or confirmed negative genetic test (CAG < 36).

---

## Methods

### Segmentation
- Applied **MALP-EM v1.2** (Multi-Atlas Label Propagation with Expectation-Maximisation) to extract **132 ROIs** from T1-weighted 3T MRI data across subcortical and cortical structures
- T1-weighted images were linearly registered to MNI standard space using the ICBM152 template
- Segmentations visualised in **Freeview (FreeSurfer v7.2.0)**

### Quality Control
- Developed and implemented a structured **visual QC standard operating procedure (SOP)** to assess anatomical accuracy of cortical and subcortical MALP-EM segmentations
- Each ROI inspected across **axial, coronal, and sagittal planes** using a standardised **0–3 grading scheme**
- QC performed **blinded to genetic status** to minimise bias
- Within-subject, across-timepoint review model adopted (baseline and follow-up scans reviewed consecutively per participant) to detect longitudinal segmentation inconsistencies
- **69 bilateral ROIs** retained for final analysis after excluding non-parenchymal and low-reliability structures

### Statistical Analysis
All statistical modelling performed in **STATA**:
- Linear regression with **FDR correction** to identify between-group differences in annualised atrophy rates
- **Annualised atrophy rate estimation** (ml/year, normalised to intracranial volume)
- **Effect size ranking** using Cohen's d to evaluate regional sensitivity to HD progression
- Association analyses between regional atrophy rates, **CAP100 disease burden scores**, and **HD-ISS staging** (stages 0–2)

---

## Statement of Contribution

| Component | Contributor |
|---|---|
| Study design & data collection | HD-YAS investigators |
| Image segmentation (MALP-EM) | Dr Nicola Hobbs |
| Dataset preparation | Candidate (with support of Dr Nicola Hobbs) |
| Visual QC | Candidate (with support of Dr Nicola Hobbs & Dr Rachael Scahill) |
| Volume extraction | Dr Nicola Hobbs |
| Atrophy rate & effect size analysis | Candidate (with support of Dr Nicola Hobbs) |
| Statistical analysis & graphing (STATA) | Candidate |
| Overall data analysis & interpretation | Candidate (with support of supervisors) |
| Dissertation write-up | Candidate |

---

## Key Results

### Significant regions (16 out of 69 ROIs)

**Subcortical deep grey matter**

| Region | HDGE atrophy rate | Control atrophy rate | FDR q-value |
|---|---|---|---|
| Caudate | 1.48%/year | 0.26%/year | 3.27 × 10⁻¹⁰ |
| Putamen | 1.85%/year | 0.45%/year | 2.37 × 10⁻⁹ |
| Pallidum | 1.58%/year | 0.35%/year | 3.51 × 10⁻⁶ |
| Nucleus accumbens | 1.05%/year | 0.03%/year | 0.038 |
| Ventral diencephalon | 0.27%/year | 0.05%/year | 0.025 |

**Cortical regions**

| Lobe | Significant ROIs |
|---|---|
| Frontal | Triangular part of inferior frontal gyrus; superior frontal gyrus medial segment |
| Parietal | Angular gyrus; precuneus; parietal operculum |
| Occipital | Calcarine cortex; lingual gyrus* |

*Occipital findings driven by volume increases in controls rather than atrophy in HDGE -  interpret with caution (see Limitations).

**White matter & brainstem**
- Cerebral white matter (q = 0.006) and brainstem (q = 0.104) also showed significant between-group differences, though partly attributable to control-group volume increases and known segmentation limitations in these regions.

### CAP100 associations
Of the 16 significant ROIs, subcortical grey matter regions, putamen, pallidum, caudate, and accumbens showed significant correlation with CAP100 (all q < 0.15), confirming their sensitivity to cumulative disease burden. Cortical ROIs did not reach significance on CAP100 analysis, suggesting their atrophy signal, while detectable at the group level, may not yet track individual disease burden at this early stage.

---

## Limitations

- Occipital lobe (calcarine cortex, lingual gyrus) and cerebral white matter findings are partly driven by volume increases in the control group rather than atrophy in HDGE participants, and may reflect segmentation artefacts rather than true biological differences, these should be interpreted cautiously
- Thalamic atrophy was not elevated, consistent with prior reports of relative thalamic sparing in early HD; thalamic segmentation on T1-weighted MRI is also inherently challenging due to poor boundary contrast
- Cortical ROI atrophy rates were closer to significance thresholds than subcortical structures, reflecting subtler and more variable signal at this early disease stage
- Sample size limits power to detect small regional effects; findings require replication in larger cohorts

---

## Files

| File | Description |
|---|---|
| `MastersDissertation.pdf` | Full 10,991-word dissertation |
| `QC_SOP.pdf` *(coming soon)* | Visual QC standard operating procedure |
| `analysis.do` *(coming soon)* | STATA do-file: longitudinal atrophy rate modelling, FDR correction, Cohen's d ranking |

---

## Data Note

Raw MRI data from the HD-YAS cohort is not shared in this repository due to ethical restrictions governing participant confidentiality. All analyses were conducted in accordance with approval from the Bloomsbury Research Ethics Committee and the Declaration of Helsinki.

---

## Supervisors

**Dr Nicola Hobbs** — Senior Research Fellow, Neurodegenerative Diseases, UCL Huntington's Disease Centre
**Dr Rachael Scahill** — Principal Imaging Research Associate & Associate Director, UCL Huntington's Disease Centre

---

## Author

**Alisha Jahangir**
MSc Clinical Neuroscience (Merit), University College London
[LinkedIn](https://www.linkedin.com/in/alishajahangir) · alishajahangir11@gmail.com
