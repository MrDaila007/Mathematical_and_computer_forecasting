# Graph Report - Mathematical_and_computer_forecasting  (2026-09-30)

## Corpus Check
- 11 files · ~103,796 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 28 nodes · 17 edges · 13 communities (7 shown, 6 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- Lab1/task.md
- Литература
- Материалы по практикуму
- Lab2/task.md
- Lab3/task.md
- Lab4/task.md
- Lab5/task.md
- Lab6/task.md
- Lab7/task.md

## God Nodes (most connected - your core abstractions)
1. `Литература` - 4 edges
2. `Материалы по практикуму` - 3 edges
3. `Описание данных` - 2 edges
4. `Ресурсы` - 1 edges
5. `Темы разделов по анализу данных в R` - 1 edges
6. `Подготовка отчета` - 1 edges
7. `Содержательная интерпретация данных` - 1 edges
8. `Предварительная настройкаR` - 1 edges
9. `Анализ данных вR` - 1 edges
10. `R tutorials` - 1 edges

## Surprising Connections (you probably didn't know these)
- None detected - all connections are within the same source files.

## Communities (13 total, 6 thin omitted)

### Community 0 - "Lab1/task.md"
Cohesion: 0.40
Nodes (4): Описание данных, Подготовка отчета, Предварительная настройкаR, Содержательная интерпретация данных

### Community 1 - "Литература"
Cohesion: 0.50
Nodes (4): R tutorials, Анализ данных вR, Литература, Теория по анализу данных и моделированию

### Community 2 - "Материалы по практикуму"
Cohesion: 0.67
Nodes (3): Материалы по практикуму, Ресурсы, Темы разделов по анализу данных в R

## Knowledge Gaps
- **14 isolated node(s):** `Ресурсы`, `Темы разделов по анализу данных в R`, `Подготовка отчета`, `Содержательная интерпретация данных`, `Предварительная настройкаR` (+9 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **6 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Литература` connect `Литература` to `Lab1/task.md`?**
  _High betweenness centrality (0.077) - this node is a cross-community bridge._
- **Why does `Материалы по практикуму` connect `Материалы по практикуму` to `Lab1/task.md`?**
  _High betweenness centrality (0.054) - this node is a cross-community bridge._
- **What connects `Ресурсы`, `Темы разделов по анализу данных в R`, `Подготовка отчета` to the rest of the system?**
  _14 weakly-connected nodes found - possible documentation gaps or missing edges._