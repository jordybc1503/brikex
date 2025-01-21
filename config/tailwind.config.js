const defaultTheme = require('tailwindcss/defaultTheme')


module.exports = {
  darkMode: 'class',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    // './node_modules/flowbite/**/*.js', // Añadir esto
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Helvetica', 'Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'green-primary': '#2CA982',      // Vibrant, primary green
        'green-muted': '#2B6867',        // Darker, muted green with teal undertones
        'teal-accent': '#18A7AA',        // Bright teal accent color
        'gray-light': '#BFC3C6',         // Light neutral gray
        'gray-dark': '#1A1917',          // Very dark gray, almost black
      },
      backgroundImage: {
        'banner-menu': "url('https://res.cloudinary.com/dkaa53krr/image/upload/v1737328503/baner-menu-brikex.jpg')",
        'banner-about-as': "url('https://res.cloudinary.com/dkaa53krr/image/upload/v1737471033/m7vxcxzoqxxgd63td2fz.jpg')",
        'banner-contact': "url('https://res.cloudinary.com/dkaa53krr/image/upload/v1737263960/vwhhbxiq1bt2dfrwf4tg.png')",
        'banner-promotor': "url('https://res.cloudinary.com/dkaa53krr/image/upload/v1737265402/mi2dzickipuazp5ddqde.png')"
      }
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),

  ]
}
