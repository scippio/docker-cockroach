MAINTAINER hugues@sutoiku.com

FROM cockroachdb/cockroach:beta-20161215

RUN groupadd -g 40561 stoic && useradd -u 40561 -g 40561 stoic

COPY init.sh /cockroach
