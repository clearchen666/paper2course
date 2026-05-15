---
name: paper2course
description: Turn AI, machine learning, deep learning, NLP, CV, robotics, agents, systems-for-ML, or data science academic papers into beautiful interactive HTML courses for practical learners. Use when Codex is asked to explain, teach, summarize, walk through, make a course from, create an interactive tutorial for, or help read an academic paper, arXiv link, PDF, LaTeX source, paper repository, benchmark paper, model paper, method paper, survey, or paper-plus-code project. Especially trigger on phrases like "paper2course", "read this AI paper", "turn this paper into a course", "explain this paper interactively", "teach me this paper", "paper walkthrough", "arXiv to course", or "make a reading guide for this paper".
---

# Paper2Course

Create a bilingual interactive course from an AI paper. The course should help a practical builder understand what the paper claims, why it matters, how the method works, how the evidence supports it, and how to use or critique the idea.

The output is a directory containing copied course assets, English and Chinese module HTML files, and assembled `index.html` / `index.zh.html` pages that open directly in a browser. The two pages must include an in-page language switch.

## Target Learner

Assume the learner is a practical AI builder, product-minded researcher, or "vibe coder" who can use AI tools but may not have formal ML training. Explain concepts plainly, define terms on first use, and always connect the paper back to concrete judgment:

- What problem is this paper really solving?
- What changed compared with prior work?
- What should I trust, test, or be skeptical about?
- How would I steer an AI coding/research agent with this knowledge?
- What implementation choices or experiments would matter in practice?

## Inputs

Accept any of these:

- Local paper PDF, Markdown, HTML, or LaTeX source.
- arXiv/OpenReview/ACL Anthology/PMLR/Semantic Scholar/publisher URL.
- A paper title plus enough context to locate it.
- Paper plus official code repository.
- A folder containing paper, notes, figures, and/or code.

If the user gives only a URL or title, fetch the paper from the most primary source available. Prefer the official PDF and official repository. If the paper cannot be accessed, explain the blocker and continue with any available abstract/metadata, clearly labeling the limitation.

## Workflow

### 1. Acquire And Extract

Create a working directory for the course. Extract the paper text, title, authors, venue/date if visible, abstract, section headings, figures/tables captions, equations, algorithm blocks, and references that are essential to the argument.

For PDFs, prefer structured extraction when available. Preserve page numbers or section names in notes so later claims can point back to the paper. For LaTeX, read `main.tex`, included section files, bibliography, figure captions, and algorithm environments.

If there is an official repo, inspect only enough to connect the paper's method to runnable artifacts: entry points, model definitions, training/inference scripts, configs, demos, and README claims.

### 2. Analyze The Paper

Read `references/paper-analysis.md` before designing the course. Build a compact analysis with:

- One-sentence thesis.
- Problem and motivation.
- Prior-work baseline and what this paper changes.
- Core method as a step-by-step mechanism.
- Key equations or algorithms translated into plain English.
- Experiments, metrics, datasets, and headline results.
- Limitations, assumptions, failure modes, and missing evidence.
- Practical implications: when to use it, when not to, and what to ask an AI agent to build or verify.

Do not overstate claims. Separate "the paper shows" from your inference. If a detail is unclear, say so inside the course rather than smoothing it away.

### 3. Design The Curriculum

Structure the course as 4-6 modules. Use 7 only for dense surveys or paper-plus-code projects. Prefer fewer, stronger modules.

A typical AI paper arc:

1. What problem is this paper trying to solve?
2. The core idea in one mental model.
3. How the method actually works, step by step.
4. What the experiments prove and do not prove.
5. How to apply, reproduce, or extend it.
6. Where it might break, and how to critique it.

Every module must help the learner do something practical: explain the paper, compare methods, inspect evidence, implement a prototype, evaluate results, or debug an AI-generated implementation.

### 4. Build The Course

Set up this output structure:

```text
paper-course-name/
  styles.css
  main.js
  _base.html
  _base.zh.html
  _footer.html
  build.sh
  notes/
    analysis.md
  modules/
    01-problem.html
    02-core-idea.html
    ...
  modules-zh/
    01-problem.html
    02-core-idea.html
    ...
  index.html
  index.zh.html
```

Copy these files verbatim from this skill's `references/` directory:

- `styles.css`
- `main.js`
- `_footer.html`
- `build.sh`

Create `_base.html` from `references/_base.html` with these substitutions:

- Both `COURSE_TITLE` placeholders -> actual course title.
- The `ACCENT_*` placeholders -> one palette from the comments in `_base.html`.
- `NAV_DOTS` -> one `<button class="nav-dot" ...>` per module.
- `LANGUAGE_SWITCH` -> an English-active switch linking to `index.zh.html`.

Create `_base.zh.html` from `references/_base.html` with the same accent palette, Chinese title/nav labels, `html lang="zh-CN"`, `NAV_DOTS` translated into Chinese, and `LANGUAGE_SWITCH` -> a Chinese-active switch linking back to `index.html`.

Write English modules in `modules/` and Chinese modules in `modules-zh/`. Each module file is one `<section class="module" id="module-N">...</section>` block. Do not include `<html>`, `<head>`, `<body>`, inline `<style>`, or inline `<script>`.

The Chinese version should be a natural Chinese teaching edition, not a stiff sentence-by-sentence machine translation. Preserve the same concepts, source anchors, interactions, quiz logic, and module IDs across languages.

Read these references only when needed:

- `references/content-philosophy.md` for paper-specific teaching, skepticism, visuals, equations, and quiz rules.
- `references/interactive-elements.md` for supported HTML patterns.
- `references/design-system.md` for visual conventions.
- `references/gotchas.md` before final review.
- `references/module-brief-template.md` only for complex papers where separate module briefs help.

### 5. Required Interactivity

Every course must include:

- At least one code/formula/table-to-English translation block per module. If the paper has no code, translate an equation, algorithm, figure, table, or experimental setup.
- At least one quiz per module. Quizzes should test applied judgment, not memorized definitions.
- Glossary tooltips for technical terms on first use per module.
- At least one method/data flow animation across the course.
- At least one "research meeting" group chat across the course, where actors like the user, model, loss function, dataset, evaluator, or baseline debate what is happening.

### 6. Assemble And Verify

Run:

```bash
cd paper-course-name && bash build.sh
```

This produces `index.html` and `index.zh.html`.

Open both pages in a browser when possible. Check language switching, navigation, quiz behavior, animations, mobile layout, source attributions, and whether equations/tables are readable. Fix obvious layout or content issues before reporting completion.

## Quality Bar

The course should feel like a smart research friend walking through the paper at a whiteboard. It should be visually engaging, skeptical in the right places, and useful for action. Avoid generic paper summaries, literature-review mush, and unsupported claims.

Before the encouragement note, add a final high-level synthesis and FAQ in both languages. The synthesis should resolve the most likely conceptual confusions for the paper type, such as whether memory lives in weights or cache, whether the method is per-user or shared, how it differs from RAG, what the cost model is, and what the practical deployment shape would be. The FAQ should answer common skeptical questions directly and carefully.

End the final module in both languages with a warm encouragement note. It should acknowledge that the learner has worked through a difficult AI paper, reinforce their new ability to explain and critique the idea, and invite a confident but skeptical reading habit. Keep it sincere and specific, not motivational-poster generic.

The final response should include the course paths for both languages, the browser URL or file path, what paper was processed, and any extraction limitations.

## Attribution

Paper2Course is adapted from Zara Zhang's `codebase-to-course` skill: https://github.com/zarazhangrui/codebase-to-course. The original project established the interactive course format, warm developer-notebook visual direction, scroll-based modules, quiz patterns, chat/flow animations, glossary tooltips, and code-to-English translation blocks. Paper2Course extends that foundation for AI academic papers, bilingual English/Chinese delivery, paper-specific analysis, final synthesis/FAQ sections, and research-reading pedagogy.
