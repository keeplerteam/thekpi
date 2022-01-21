from p2p_network.protocol import Protocol


class TransactionProtocol(Protocol):
    name = "transactions"

    def __init__(self, node, blockchain):
        super().__init__(node)
        self.blockchain = blockchain

    def handle(self, sender, message):
        pass
