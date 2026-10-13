build:
	hugo build --ignoreCache --minify --cleanDestinationDir

serve:
	hugo server --disableFastRender --noHTTPCache

# Fails on warnings, broken internal links, missing images, and missing alt text.
check:
	hugo build --ignoreCache --renderToMemory --panicOnWarning --printPathWarnings --printUnusedTemplates
