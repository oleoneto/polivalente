function withOpacity(variableName) {
  return ({ opacityValue }) => {
    return opacityValue !== undefined ?
        `rgba(var(${variableName}), ${opacityValue})` :
        `rgba(var(${variableName}))`
  }
}

module.exports = {
  content: [
    "./app/**/*.{html,html.erb}",
    "./app/helpers/**/*.rb",
    "./app/assets/build/js/**/*.{js,vue}",
  ],
  darkMode: "class",
  theme: {
    extend: {
      typography: theme => ({
        DEFAULT: {
          css: {
            code: { fontSize: 'inherit' },
            blockquote: { color: 'inherit' },
            h1: { color: 'inherit' },
            h2: { color: 'inherit' },
            h3: { color: 'inherit' },
            h4: { color: 'inherit' },
            h5: { color: 'inherit' },
            h6: { color: 'inherit' },
            strong: { color: 'inherit' },
            'code::before': { content: 'none' },
            'code::after': { content: 'none' },
            video: {
              margin: '0 !important',
              padding: '0'
            },
          }
        }
      }),
      backgroundColor: {
        primary: withOpacity('--color-bg-primary'),
        secondary: withOpacity('--color-bg-secondary'),
        tertiary: withOpacity('--color-bg-tertiary'),
        muted: withOpacity('--color-bg-muted'),
        inverted: withOpacity('--color-bg-inverted'),
        'button-accent': withOpacity('--color-button-accent'),
        'button-accent-hover': withOpacity('--color-button-accent-hover'),
        'button-muted': withOpacity('--color-button-muted')
      },
      borderColor: {
        primary: withOpacity('--color-border-primary'),
        secondary: withOpacity('--color-border-secondary'),
        tertiary: withOpacity('--color-border-tertiary'),
        inverted: withOpacity('--color-border-inverted'),
      },
      textColor: {
        primary: withOpacity('--color-text-primary'),
        secondary: withOpacity('--color-text-secondary'),
        tertiary: withOpacity('--color-text-tertiary'),
        inverted: withOpacity('--color-text-inverted'),
      },
    },
  },
  plugins: [
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/line-clamp"),
  ],
}
