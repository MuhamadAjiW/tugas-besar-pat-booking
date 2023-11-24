import { QueueListener } from "../types/interfaces/QueueListener";
import { RabbitMQConnection } from '../utils/connection';

export class PaymentListener implements QueueListener {
    exchangeName: String = "payment-exchange";
    queueName: String = "outgoing-invoice-queue";
    
    async startListening(): Promise<void> {
        try {
            const channel = await RabbitMQConnection.createChannel()

            await channel.assertExchange(this.exchangeName, 'direct', { durable: true });
            await channel.assertQueue(this.queueName, { durable: true });
            await channel.bindQueue(this.queueName, this.exchangeName, '/');

            channel.consume(this.queueName, (message: any) =>{
                if(message !== null){
                    console.log("message recceived");
                    console.log(message.content.toString());
                    channel.ack(message);
                }
            });

        } catch (error) {
            console.log('Failed listening for payments');
        }
    }

}