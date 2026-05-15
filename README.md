# Paper2Course

Turn AI papers into bilingual, interactive HTML courses.

Paper2Course is a Codex skill for reading machine learning, deep learning, NLP, CV, agents, robotics, systems-for-ML, data science, and related academic papers. Point it at a PDF, arXiv link, LaTeX source, paper folder, or paper-plus-code project; it produces an English/Chinese course that teaches the paper through visual modules, formula-to-plain-language translations, quizzes, method/data-flow animations, glossary tooltips, and a final synthesis/FAQ.

## Credit

This project is adapted from Zara Zhang's excellent [`codebase-to-course`](https://github.com/zarazhangrui/codebase-to-course).

The original project established the interactive course format, warm developer-notebook visual direction, scroll-based modules, quiz patterns, group chat/data-flow animations, glossary tooltips, and code-to-English translation blocks. Paper2Course extends that foundation from codebases to AI academic papers, adding paper-specific analysis, bilingual English/Chinese output, final synthesis/FAQ sections, and research-reading pedagogy.

All credit for the original concept and course interaction foundation goes to Zara Zhang and `codebase-to-course`.

## What It Generates

Each generated course is a static directory:

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
    ...
  modules-zh/
    01-problem.html
    ...
  index.html
  index.zh.html
```

Open `index.html` for English or `index.zh.html` for Chinese. The pages include a top-nav language switch.

## Course Features

- Bilingual English/Chinese pages
- Scroll-based modules with progress dots
- Formula / algorithm / table / code to plain-language translation blocks
- Applied quizzes in every module
- Method or data-flow animations
- Research-meeting style component chats
- Glossary tooltips for technical terms
- Final synthesis and FAQ to resolve common conceptual confusions
- Warm closing note that reinforces confident, skeptical reading

## Who This Is For

Paper2Course is for practical AI builders, product-minded researchers, and vibe coders who want to understand AI papers deeply enough to:

- explain the paper accurately
- compare it against baselines such as RAG, fine-tuning, agents, or systems tricks
- inspect what the experiments prove and do not prove
- steer AI coding/research agents with sharper prompts
- identify what would be expensive, fragile, or worth testing first

## Install

Clone this repository into your Codex skills directory:

```bash
git clone https://github.com/clearchen666/paper2course ~/.codex/skills/paper2course
```

Restart Codex so the skill is discovered.

## Example Prompts

```text
Use $paper2course to turn this arXiv paper into an interactive course:
https://arxiv.org/pdf/2603.23516
```

```text
把这篇 AI paper 做成中英双语互动课程：./paper.pdf
```

```text
Use $paper2course on this paper plus official repo and explain what I should trust, test, and be skeptical about.
```

## Notes On Licensing

This repository intentionally does not add a separate open-source license at this time. The upstream `codebase-to-course` repository did not declare a license when this project was created, so this repo preserves explicit attribution and avoids making broader license claims.
