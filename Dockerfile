FROM centos/python-34-centos7
LABEL "io.openshift.s2i.build.commit.author"="bpratt <bpratt@us.ibm.com>" \
      "io.openshift.s2i.build.commit.date"="Fri Oct 29 13:58:37 2021 -0400" \
      "io.openshift.s2i.build.commit.id"="6572f7ee9ad63d105a967680ea4b33888d15598c" \
      "io.openshift.s2i.build.commit.ref"="main" \
      "io.openshift.s2i.build.commit.message"="change to python" \
      "io.openshift.s2i.build.source-location"="/Users/bakerpratt/dev/github.com/bhpratt/eclipsechedemo/." \
      "io.k8s.display-name"="test6" \
      "io.openshift.s2i.build.image"="centos/python-34-centos7"

USER root
# Copying in source code
COPY upload/src /tmp/src
# Change file ownership to the assemble user. Builder image must support chown command.
RUN chown -R 1001:0 /tmp/src
USER 1001
# Assemble script sourced from builder image based on user input or image metadata.
# If this file does not exist in the image, the build will fail.
RUN /usr/libexec/s2i/assemble
# Run script sourced from builder image based on user input or image metadata.
# If this file does not exist in the image, the build will fail.
CMD /usr/libexec/s2i/run
