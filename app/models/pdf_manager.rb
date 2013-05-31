require 'httparty'

class PDFManager
  # attr_accessible :title, :body
  attr_accessor :web_svc_url
  include HTTParty
  format :json

  def generate_pdf(invoicedid)
    options = {}
    options.merge!(:headers => {"Authorization" => "Partner Axiom:b27C3g4Vy9"})
    res = self.class.get(@web_svc_url+'/api/pdf/'+invoicedid, options)
  end
end
