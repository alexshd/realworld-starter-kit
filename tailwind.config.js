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
        hg: ['24em', { fontWeight: '300' }],
      },
    },
  },
  plugins: [require('tailwindcss-rtl'), require('@tailwindcss/forms')],
}
