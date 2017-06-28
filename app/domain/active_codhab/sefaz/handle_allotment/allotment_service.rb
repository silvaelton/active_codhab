require_dependency 'active_codhab/sefaz/handle_allotment/exemption_form'

module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentService

        def initialize(allotment, staff)
          @allotment = allotment
          @staff    = staff
        end

        def send_sefaz_allotment
          @xml = ExemptionForm.xml(@allotment.id)
          set_client
          message = { "imoveis_xml"  => @xml, "tpImposto" =>  @alltoment.exemption_type.upcase}
          result = @client.call(:receber_inf_imovel_construido, message: message)
          protocol = result.hash[:envelope][:body][:receber_inf_imovel_construido_response][:receber_inf_imovel_construido_result][:protocolo]
          @alltoment.update(send_status_id: 3, send_date: DateTime.now, send_staff_id: @staff.id, protocol_return: protocol)
        end

        def send_parcial_sefaz_allotment
          @xml = ExemptionForm.xml_parcial(@allotment.id)
          set_client
          message = { "cancelamentParcial_xml"  => @xml}
          result = @client.call(:receber_inf_cancelamento_parcial, message: message)
          protocol = result.hash[:envelope][:body][:receber_inf_cancelamento_parcial_response][:receber_inf_cancelamento_parcial_result][:protocolo]
          @alltoment.update(send_status_id: 3, send_date: DateTime.now, send_staff_id: @staff.id, protocol_return: protocol)
        end

        def send_total_sefaz_allotment
          @xml = ExemptionForm.xml_total(@allotment.id)
          set_client
          message = { "cancelamentoTotal_xml"  => @xml}
          result = @client.call(:receber_inf_cancelamento_total, message: message)
          protocol = result.hash[:envelope][:body][:receber_inf_cancelamento_total_response][:receber_inf_cancelamento_total_result][:protocolo]
          @alltoment.update(send_status_id: 3, send_date: DateTime.now, send_staff_id: @staff.id, protocol_return: protocol)
        end

        def receive_sefaz_return
        end

        private

        def set_client
				  @client = Savon.client(wsdl: 'http://publica.agencianet.fazenda.df.gov.br/codhab/ConsessaoImovel.asmx?wsdl',namespace: nil,encoding: "UTF-8", env_namespace: :soap,open_timeout: 900,read_timeout:900)
		    end

      end
    end
  end
end
