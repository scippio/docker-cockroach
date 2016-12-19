FROM cockroachdb/cockroach:beta-20161215

MAINTAINER hugues@sutoiku.com

RUN groupadd -g 40561 stoic && useradd -u 40561 -g 40561 stoic

COPY init.sh /cockroach
