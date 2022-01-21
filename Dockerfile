FROM python:3.9-slim-bullseye

COPY . .

# install kpi deps
RUN pip install -r requirements.txt

RUN chmod -R +x /scripts
RUN /scripts/install-ipfs-private-network.sh

EXPOSE 4001 4001

# run ipfs node and kpi node
CMD ["/scripts/run.sh"]
