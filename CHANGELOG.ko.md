# 변경 이력 (Changelog)

이 프로젝트의 주요 변경 사항을 기록합니다.
형식은 [Keep a Changelog](https://keepachangelog.com/)를 따르며,
[유의적 버전(Semantic Versioning)](https://semver.org/)을 준수합니다.

> English: [CHANGELOG.md](CHANGELOG.md)

## [0.1.0] — 2026-06-28

- 적응형 요구사항 도출 게이트 **steakorder** 최초 공개.
- 2단계 도출: Discovery(영역 1–8)와 Specification(영역 9–13).
- 4개의 대화형 품질 게이트(Unambiguous · Verifiable · Complete · Consistent),
  그리고 확정 요구사항에 대한 ISO/IEC/IEEE 29148 well-formed 기준.
- 컴포넌트 그룹핑, 가중치 우선순위, ACD / 유스케이스 Mermaid 다이어그램,
  검증 방법, 추적성 표를 포함한 ISO/IEC/IEEE 29148 SRS 출력.
- 문서 재생성(document-intake) 모드: 기존 요구사항 문서를 읽어 커버리지 맵을
  보여주고, 빈틈만 질문해 깨끗한 새 SRS를 생성.
- Claude Code 플러그인 패키징(`.claude-plugin/`)과 `/steakorder` 명령어.
- `.skill` 번들 빌드 스크립트와 태그 기반 릴리스 워크플로.
