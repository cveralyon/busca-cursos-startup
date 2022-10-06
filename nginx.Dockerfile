# Set nginx base image
FROM nginx

# File Author / Maintainer
MAINTAINER MY_SELF

# Copy custom configuration file from the current directory
COPY nginx.conf ./nginx.conf

