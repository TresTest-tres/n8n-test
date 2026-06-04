FROM node:22.2.0

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install pnpm at the required version
RUN npm install -g pnpm@10.2.0

# Install dependencies and build
RUN pnpm install --frozen-lockfile && pnpm run build

# Expose the port n8n will run on
EXPOSE 3000

# Start n8n
CMD ["pnpm", "start"]
