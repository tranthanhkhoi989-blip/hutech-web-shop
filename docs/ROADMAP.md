# Roadmap

This roadmap documents extendability and future development directions.

## Near-term improvements
1. Add `.env`-style config loading to avoid editing tracked config files.
2. Add automated smoke tests for checkout, login, and admin order flow.
3. Add role-based permission matrix in admin UI.
4. Improve image optimization pipeline for faster first-load performance.

## Mid-term improvements
1. Introduce REST API versioning (`/api/v1`, `/api/v2`).
2. Migrate template assets to modern build pipeline (Vite/Webpack).
3. Add Redis caching for product/category pages.
4. Add queue worker for email and background jobs.

## Long-term improvements
1. Multi-tenant architecture for multiple stores.
2. Payment gateway abstraction layer for easier provider switching.
3. Full test suite (unit, integration, and e2e).
4. CI/CD pipeline for lint, test, build, and release tagging.
