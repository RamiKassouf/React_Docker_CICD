import React from 'react';
import { render } from '@testing-library/react';
import HelloWorld from './HelloWorld'; // Adjust the import path based on your project structure

test('renders hello world', () => {
  // Render the component
  const { getByText } = render(<HelloWorld />);

  // Use the `getByText` function from React Testing Library to find the element
  // with the text "Hello, world!" and assert that it is in the document
  const helloWorldElement = getByText(/Hello, world!/i);
  expect(helloWorldElement).toBeInTheDocument();
});
