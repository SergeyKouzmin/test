#include "AMQPcpp.h"
#include <iostream>

int i = 0;

int onCancel(AMQPMessage* message) {
	cout << "onCanssel: " << "cancel tag=" << message->getDeliveryTag() << endl;
	return 0;
}

int  onMessage(AMQPMessage* message) {
	uint32_t j = 0;
	char* data = message->getMessage(&j);
	if (data) {
		cout << "onMessage: " << data;
	}
	i++;

	cout << " " << i << " tag = " << message->getDeliveryTag() << " type: " << message->getHeader("type") << endl;

	if (i > 10) {
		AMQPQueue* q = message->getQueue();
		q->Cancel(message->getConsumerTag());
	}
	
	return 0;
};

int main () {
	std::cout << "Application start" << std::endl;

	try {
		AMQP amqp;
		std::cout << "Connected parameters: ";
		amqp.printConnect();

		AMQPQueue* qu2 = amqp.createQueue("q2");

		qu2->Declare();
		qu2->Bind( "e", "");

		qu2->setConsumerTag("tag_123");
		qu2->addEvent(AMQP_MESSAGE, onMessage);
		qu2->addEvent(AMQP_CANCEL, onCancel);

		qu2->Consume(AMQP_NOACK);

	} catch (AMQPException e) {
		std::cout << e.getMessage() << std::endl;
	}
	
	std::cout << "Application stop" << std::endl;

	return 0;
}