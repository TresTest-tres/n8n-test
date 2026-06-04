FROM node:22.2.0
WORKDIR /app
COPY . .
RUN npm install -g pnpm@10.2.0 && pnpm install --frozen-lockfile && pnpm run build
CMD ["pnpm", "start"]
