# Paper2Course Content Philosophy

## Table Of Contents

- Teaching stance
- Module density
- Visual-first explanations
- Equations, algorithms, and tables
- Quizzes
- Skepticism and uncertainty
- Source attribution
- Bilingual delivery
- Final synthesis and FAQ
- Closing encouragement

## Teaching Stance

Teach like a research friend who is careful, excited, and usefully skeptical. Avoid both hype and academic fog. The learner should come away able to explain the paper accurately and make better practical decisions.

Each screen should answer one of these:

- What is the paper trying to fix?
- What is the new idea?
- What moves through the method?
- What signal teaches it?
- What did the experiments actually show?
- Where could this fail?
- How would I build or test a small version?

## Module Density

Keep each module to 3-6 screens. Each screen should usually have one strong visual or interaction plus 1-3 short paragraphs. If the learner needs a wall of text, the screen is not designed yet.

Prefer concrete paper artifacts:

- A figure redrawn as a simple flow.
- An equation translated into choices and pressure.
- A table turned into a comparison or scoreboard.
- An algorithm converted into a stepper.
- A benchmark setup converted into a test bench.

## Visual-First Explanations

Every course must include:

- A method or data flow animation.
- A research-meeting chat between paper "actors".
- Translation blocks for formulas, algorithms, tables, or code.
- Applied quizzes.
- Glossary tooltips on first technical use per module.

Good actors for chats:

- User query, model, retriever, planner, verifier, reward model, dataset, loss function, evaluator, baseline, deployment system.

Good flow nodes:

- Input, encoder, retriever, memory, policy, tool call, simulator, critic, gradient, reward, benchmark, metric, deployment decision.

## Equations, Algorithms, And Tables

Never hand-wave math. Translate it.

For an equation:

- State what the equation is trying to make larger, smaller, closer, farther, more likely, or less likely.
- Define each symbol in plain language.
- Explain why that operation helps the paper's goal.
- Point out what the equation ignores or assumes when relevant.

For an algorithm:

- Turn it into a numbered process.
- Identify loop boundaries and stopping conditions.
- Identify where randomness, search, retrieval, or learned parameters enter.
- Explain what would break if one step were removed.

For a table:

- Explain the metric before comparing numbers.
- Highlight the meaningful deltas, not every cell.
- Mention whether the result is statistically or practically convincing if the paper provides enough information.

## Quizzes

Quizzes should test applied understanding:

- "A reproduction gets good training loss but bad benchmark results. Where do you inspect first?"
- "Which ablation would best support the claimed mechanism?"
- "Which deployment setting would violate the paper's assumptions?"
- "What file would you ask an AI agent to write first for a prototype?"

Avoid trivia:

- No "What does RLHF stand for?"
- No "Which section contains experiments?"
- No questions answerable by keyword matching alone.

## Skepticism And Uncertainty

Be precise:

- "The paper shows..." for directly supported claims.
- "This suggests..." for reasonable inference.
- "The paper does not establish..." for limits.
- "I could not verify..." when extraction or access is incomplete.

Do not invent missing baselines, implementation details, or numerical results. If a claim matters and the paper does not support it, make that absence part of the lesson.

## Source Attribution

Use short source labels in module copy such as "Section 3", "Figure 2", "Table 1", or "Appendix B". Keep them lightweight; the course should not read like a citation manager.

When using exact wording from the paper, keep quotes short and sparing. Prefer paraphrase plus section reference.

## Bilingual Delivery

Build two complete course pages by default:

- `index.html` for English.
- `index.zh.html` for Chinese.

Use the same module IDs, quiz IDs, interaction structure, and evidence anchors across both languages. The Chinese page should read as natural Chinese teaching prose, not literal translation. Keep technical terms bilingual when helpful, such as "路由器 router" or "稀疏注意力 sparse attention" on first use.

Add a compact language switch in the nav of both pages. English should show `EN` as active and link `中文` to `index.zh.html`; Chinese should show `中文` as active and link `EN` to `index.html`.

## Final Synthesis And FAQ

Before the final encouragement note, add one high-level synthesis screen and one FAQ screen. These are for "now I get the parts, but what does it mean?" understanding.

The synthesis should:

- Name the paper's practical deployment shape.
- Compare the method to the most likely baseline in one concise mental model.
- Explain the cost model: what is trained once, what is built per user/corpus, and what runs per query.
- Resolve common category errors, such as confusing model weights, caches, slots, embeddings, retrieval, and fine-tuning.

The FAQ should answer 3-5 skeptical questions a smart reader would naturally ask. Good FAQ questions include:

- Is this memory stored in model weights?
- Is it one model per user or one shared model with per-user state?
- Is the memory stored as fixed slots, chunks, cache entries, embeddings, or text?
- Why might this beat RAG, and where might RAG still win?
- What part is expensive: training, memory encoding, serving, or updating?
- What would I test first before trusting the paper?

Keep answers short and direct. These FAQ cards are for conceptual clarity, not another literature review.

## Closing Encouragement

The final module must end with a short encouragement note in both languages. It should:

- Acknowledge that the paper was hard.
- Name one or two concrete ideas the learner can now explain or critique.
- Reinforce skeptical confidence: admire the idea, inspect the evidence, and ask what would break.
- Avoid vague cheerleading.
