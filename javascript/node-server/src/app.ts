import express from 'express';

// Create an instance of an Express application
const app = express();

// Define a port to listen on
const PORT = 3000;

// Set up a basic route
app.get('/', (req: express.Request, res: express.Response) => {
  res.send('Hello, World!');
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});

