require 'shareathome/api'
require 'aws-sdk'

module ShareAtHome
  class Controller

    attr_reader :program_name
    def initialize(program_name)
      @program_name = program_name

      AWS.config api.get_program(program_name)['aws_controller_config']
    end

    def api
      ShareAtHome::Auth.api
    end

    def sqs
      @sqs ||= AWS::SQS.new
    end

    def queue
      sqs.queues.named api.get_program(program_name)['queue_name']
    end
  end
end
