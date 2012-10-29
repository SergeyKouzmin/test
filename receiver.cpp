#include "AMQPcpp.h"
#include <iostream>

int main () {
	std::cout << "Application start" << std::endl;

	try {

		AMQP amqp;
		std::cout << "connect parameters: " << std::endl;
		amqp.printConnect();

		AMQPQueue* qu2 = amqp.createQueue("q2");
		qu2->Declare();

		while (true) {
			qu2->Get(AMQP_NOACK);

			AMQPMessage* m = qu2->getMessage();

			cout << "count: " <<  m->getMessageCount() << endl;
			if (m->getMessageCount() > -1) {
				uint32_t j = 0;
				cout << "message: " << m->getMessage(&j) <<  endl;
				cout << "routing key: " <<  m->getRoutingKey() << endl;
				cout << "exchange: " <<  m->getExchange() << endl;
				cout << "type: " << m->getHeader("type") << endl;
			} else {
				break;
			}
		}
		
	} catch (AMQPException e) {
		std::cout << e.getMessage() << std::endl;
	}
	
	std::cout << "Application stop" << std::endl;

	return 0;
}