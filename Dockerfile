# This is a Dockerfile, which defines what is installed to run your
# application. The App Engine SDK will inspect this file automatically
# to build a local docker image that contains your application.
#
# For more https://docs.docker.com/reference/builder/#format

# This line imports an existing public docker image. This particular
# image installs node and triggers npm on build. You can read more
# at https://registry.hub.docker.com/u/google/nodejs-runtime/
FROM google/nodejs-runtime
