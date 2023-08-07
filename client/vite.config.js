import { defineConfig } from 'vite'
import { resolve } from 'path'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  root: path.join(__dirname, 'client/dist/index.html'),
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'client/dist/index.html'),
        nested: resolve(__dirname, 'index.html'),
      },
    },
  },
})
