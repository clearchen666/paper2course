# Paper Analysis Guide

Use this guide to turn a paper into a reliable teaching plan before writing course HTML.

## Extraction Notes

Capture enough source anchors to avoid hallucinating:

- Title, authors, venue or arXiv date.
- Abstract and stated contributions.
- Section headings and their purpose.
- Figures, tables, algorithms, and equations with page or section references.
- Datasets, baselines, metrics, and ablations.
- Limitations, ethics, broader impacts, appendices, and reproducibility details.

When figures are important, describe what the figure shows instead of copying it verbatim unless using a local screenshot is appropriate and allowed.

## The Paper Card

Write a short internal card in `notes/analysis.md`:

```markdown
# Paper Card

Paper:
Source:
Venue/date:

Thesis:
Problem:
Core idea:
Main mechanism:
Evidence:
Limitations:
Best use case:
Do not use when:
Implementation hooks:
Open questions:
```

## AI Paper Reading Heuristics

### Problem

Identify the real bottleneck. In AI papers, the surface problem may be "better accuracy", but the deeper problem may be context length, supervision cost, latency, data quality, distribution shift, reasoning reliability, alignment, or evaluation.

### Contribution

Separate contribution types:

- New architecture or model component.
- New training objective or loss.
- New dataset, benchmark, or evaluation protocol.
- New inference-time procedure.
- New systems trick that changes cost, scale, latency, or memory.
- New empirical finding or critique.
- Survey or taxonomy.

Do not treat all contributions as equally important. Teach the one that changes the learner's mental model.

### Method

Translate the method into a mechanism:

1. What goes in?
2. What transforms it?
3. What signal teaches or selects the behavior?
4. What comes out?
5. What gets measured?

If equations appear, explain the role of each symbol and the intuition of the operation. Avoid "just math" explanations. Name what the equation makes the model prefer, ignore, compress, retrieve, rank, align, or penalize.

### Evidence

For each headline result, identify:

- Dataset or benchmark.
- Metric and what the metric does not capture.
- Baselines.
- Size of improvement.
- Whether the comparison is fair.
- Ablation that supports the claimed mechanism.
- Missing ablation or missing deployment evidence.

Make skepticism constructive: "This result supports X, but does not yet prove Y."

### Practical Builder Angle

Turn research into actions:

- What would you ask an AI coding agent to implement?
- Which files or modules would exist in a prototype?
- What tests would catch a fake or broken implementation?
- What hyperparameters, prompts, datasets, or evaluation scripts matter most?
- What failure mode should be checked before trusting the method?

## Handling Paper Types

### Method Paper

Center the course on the mechanism and the evidence that the mechanism matters.

### Benchmark Or Dataset Paper

Center the course on what the benchmark measures, what it misses, how data was collected, and how to avoid overfitting to the leaderboard.

### Systems Paper

Center the course on bottlenecks, constraints, tradeoffs, throughput, memory, latency, and failure recovery.

### Agent Or LLM Application Paper

Center the course on loop structure, tools, memory, retrieval, planning, evaluation, and where errors compound.

### Survey

Center the course on taxonomy and decision-making. The learner should leave knowing which family of methods to choose and why.
