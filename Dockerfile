FROM node:10

LABEL version="0.1.0"
LABEL repository="http://github.com/tommy351/hexo-actions"
LABEL homepage="http://github.com/tommy351/hexo-actions"
LABEL maintainer="Tommy Chen <tommy351@gmail.com>"

LABEL com.github.actions.name="Hexo Actions"
LABEL com.github.actions.description="Build and deploy a Hexo site to GitHub pages"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
