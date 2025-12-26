-- 01_schema.sql
-- Purpose: create a dedicated schema for the retail sales project

CREATE SCHEMA IF NOT EXISTS retail;

-- Set default schema for the session
SET search_path TO retail;