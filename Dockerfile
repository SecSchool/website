FROM node:alpine AS frontend-builder
WORKDIR /app
COPY ./frontend/ ./
RUN npm install
RUN npm run build

FROM rust:alpine AS backend-builder
WORKDIR /app
COPY ./backend/ ./
RUN cargo build --release

FROM alpine:latest AS runner
WORKDIR /app
COPY --from=frontend-builder /app/dist ./root
COPY --from=backend-builder /app/target/release/backend ./backend
RUN chmod +x backend
EXPOSE 80
CMD /app/backend