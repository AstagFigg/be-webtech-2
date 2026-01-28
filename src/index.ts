import { Hono } from 'hono'
import { serve } from '@hono/node-server'
import studentsRoute from './students/students.route.js'

const app = new Hono()

app.route('/students', studentsRoute)

// Start the server
serve({
  fetch: app.fetch,
  port: 3000
})
console.log('Server running at http://localhost:3000')
