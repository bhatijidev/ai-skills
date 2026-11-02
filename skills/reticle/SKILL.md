---
name: reticle
description: Proofreader for AI-written code on running applications. Checks live network calls, store states, console logs, and DOM elements in real-time to verify that implemented features actually work without silent errors.
---

# Reticle — Live Application Proofreader & Verifier

Reticle inspects real running web applications from the inside out. It verifies network calls, client state stores (Zustand, Redux, Context), console errors, and signals to ensure feature implementations pass empirical verification before shipping.

## Core Capabilities

- **Inside-the-App Inspection**: Captures what screenshot tools miss — network 500 errors under perfect UI, un-mutated client state stores, and unhandled console warnings.
- **Store & State Verification**: Subscribes to client state changes and validates store state against expected business logic.
- **Empirical Pass/Fail Verdicts**: Returns precise evidence with `file:line` locations when tests fail or pass.

## Setup Mode

To initialize Reticle in a project:

```bash
npx @reticlehq/server init
```

For Vite + React applications:

```ts
// vite.config.js
import { reticle } from '@reticlehq/vite-plugin';

export default defineConfig({
  plugins: [react(), reticle()],
});
```

## Verification & Proofreading Workflow

1. **Check Live State**: Verify that state mutations match expected data shapes after API calls.
2. **Check Network Requests**: Inspect API status codes (ensure 200 OK vs 400/401/500 errors).
3. **Console Hygiene**: Ensure zero unhandled promise rejections or runtime exceptions in developer tools logs.
