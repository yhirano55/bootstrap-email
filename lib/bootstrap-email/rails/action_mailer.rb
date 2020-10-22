class ActionMailer::Base
  def bootstrap_mail(*args, &block)
    bootstrap = BootstrapEmail::Compiler.new(mail(*args, &block))
    bootstrap.perform_full_compile
  end
end
