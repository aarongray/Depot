class Notifier < ActionMailer::Base
  # This spoofs who the e-mail appears to be sent from.
  default :from => 'Pragmatic Bookshelf <orders@PragmaticBookshelf.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @order = order

    # This is where we set the subject line for the order received email
    mail :to => order.email, :subject => 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order

    # This is where we set the subject line for the order shipped email
    mail :to => order.email, :subject => 'Pragmatic Store Order Shipped'
  end
end
