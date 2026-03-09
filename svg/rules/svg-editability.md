# SVG Editability Rules

## Goal
Make later manual updates easy and safe.

## Rules
- Prefer `rect`, `text`, `line`, `polyline`, and simple `path` forms.
- Avoid flattening all geometry into paths unless necessary.
- Avoid unnecessary transforms when direct coordinates are clearer.
- Keep repeated patterns visually and structurally consistent.
- Separate reusable visual motifs into identifiable groups.
- Do not optimize away maintainability in hand-authored diagrams.

## Editing preference order
1. readable structure
2. visual consistency
3. portability
4. size optimization
