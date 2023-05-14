/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx,elm}'],
  theme: {
    container: {
      center: true,
    },
    extend: {
      fontFamily: {
        heb: ['Arimo', 'sans-serif'],
      },
      fontSize: {
        hg: ['25.5em', { fontWeight: '500' }],
      },
    },
  },
  plugins: [require('tailwindcss-rtl'), require('@tailwindcss/forms')],
}
