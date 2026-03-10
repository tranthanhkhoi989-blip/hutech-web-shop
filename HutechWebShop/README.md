# HutechWebShop (.NET 8)

Self-contained ASP.NET Core project ready for GitHub clone and Docker run.

## Requirements
- Docker + Docker Compose

## Quick start
1. Clone repository and go to this folder:
   - `cd HutechWebShop`
2. Create local env file from example:
   - `cp .env.example .env`
3. Start services:
   - `docker compose up -d --build`
4. Open app:
   - `http://localhost:5001`
5. Health check:
   - `http://localhost:5001/health`

## Notes
- SQL Server container runs at host port `1434`.
- Upload files persist in `wwwroot/uploads`.
- Do not commit real secrets to `.env`.
