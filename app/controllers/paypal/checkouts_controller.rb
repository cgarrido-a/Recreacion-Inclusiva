class Paypal::CheckoutsController < ApplicationController
include PayPal::SDK::REST
    def create
        payment = Payment.new({
        intent: 'sale',
        payer:{
            payment_method: 'paypal'
        },
        redirect_urls: {
            return_url: complete_paypal_checkouts_url,
            cancel_url: root_path
        },
        transactions:   [
                {
                    amount: {
                        total: 5,
                        currency: 'USD'
                    },
                    description: 'Donacion'
                }
            ]
        })

        if payment.create
            redirect_urls = payment.links.find {|v| v.rel == 'approval_url'}.href
            redirect_to redirect_url
        else
            redirect_to root_path, alert: 'Algo salio mal, intenta mas tarde'
        end
    end
end