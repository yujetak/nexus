# 1단계: 의존성 설치 스테이지
FROM node:20-alpine AS deps
WORKDIR /app

# 의존성 파일 복사 및 설치
COPY package.json package-lock.json* ./
RUN npm install

# 2단계: 빌드 스테이지
FROM node:20-alpine AS builder
WORKDIR /app

# 의존성 및 소스 코드 복사
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Next.js 빌드 실행
RUN npm run build

# 3단계: 실행 스테이지
FROM node:20-alpine AS runner
WORKDIR /app

# 운영 환경 설정
ENV NODE_ENV production

# 필요한 파일만 빌드 스테이지에서 복사
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

# Next.js 기본 포트 노출
EXPOSE 3000

# 서버 실행
CMD ["npm", "start"]
