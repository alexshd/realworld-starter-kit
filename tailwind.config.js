/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx,elm}'],
  theme: {
    extend: {
      fontFamily: {
        heb: ['Arimo', 'sans-serif'],
      },
      fontSize: {
        hg: [
          '25.5rem',
          {
            fontWeight: '500',
          },
        ],
      },
    },
  },
  plugins: [],
}
