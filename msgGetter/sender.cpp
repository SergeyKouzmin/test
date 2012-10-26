#include "AMQPcpp.h"
#include <iostream>

int main () {
	std::cout << "Application start" << "\n";

	try {

		AMQP amqp;
		std::cout << "Connection parameters: " << std::endl;
		amqp.printConnect();

		AMQPExchange* ex = amqp.createExchange("e");
		ex->Declare("e", "fanout");

		AMQPQueue* qu2 = amqp.createQueue("q2");
		qu2->Declare();
		qu2->Purge();
		qu2->Bind( "e", "");

		string ss = "Hello RabbitMQ";

		ex->setHeader( "type", "text");
		ex->Publish(  ss , "");

		ex->Publish( "message 2 " , "");
		ex->Publish( "message 3 " , "");


	} catch (AMQPException e) {
		std::cout << e.getMessage() << std::endl;
	}
	
	std::cout << "Application stop" << "\n";

	return 0;
}