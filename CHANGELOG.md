# Changelog

All notable changes for this submission are documented in this file.

## [1.0.0-competition-2026] - 2026-02-16
### Added
- Added `sql/shop.sql` for full database import during grading.
- Added Vietnamese installation and usage guide: `docs/SETUP_AND_USAGE_VI.md`.
- Added SQL import guide: `sql/README.md`.
- Added dependency disclosure: `docs/DEPENDENCIES.md`.
- Added project roadmap: `docs/ROADMAP.md`.
- Added rubric evidence mapping: `docs/COMPETITION_CHECKLIST.md`.
- Added explicit project version file: `VERSION`.

### Changed
- Updated `application/config/mailer.php` to safe placeholders (no real credentials).
- Updated `README.md` with grading-focused quick links.

### Security
- Removed hard-coded sensitive SMTP values from tracked config.
