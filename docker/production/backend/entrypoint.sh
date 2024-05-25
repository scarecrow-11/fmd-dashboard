#!/bin/sh

# Prisma migration
npx prisma migrate deploy;
npx prisma generate;

# Run the command
exec "$@";
