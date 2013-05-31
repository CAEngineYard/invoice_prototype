require 'test_helper'

class PDFManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'generate pdf mock test success' do
    @base64string = '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ZGluZyAKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZCAKL05hbWUgL0hlbHZldGljYUIgCj4+IGVuZG9iagoKOSAwIG9iago8PAovVHlwZSAvRm9udCAKL1N1YnR5cGUgL1R5cGUxIAovRW5jb2RpbmcgL1dpbkFuc2lFbmNvZGluZyAKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZE9ibGlxdWUgCi9OYW1lIC9IZWx2ZXRpY2FCSSAKPj4gZW5kb2JqCgo3IDAgb2JqCjw8Ci9UeXBlIC9Gb250IAovU3VidHlwZSAvVHlwZTEgCi9FbmNvZGluZyAvV2luQW5zaUVuY29kaW5nIAovQmFzZUZvbnQgL0hlbHZldGljYSAKL05hbWUgL0hlbHZldGljYSAKPj4gZW5kb2JqCgoxMSAwIG9iago8PAovQ3JlYXRpb25EYXRlIChEOjIwMTMwNDA4MTQxMDIzKSAKL1Byb2R1Y2VyICh4bWxwZGYgNC45LjNNL1IpIAo+PiBlbmRvYmoKCjEyIDAgb2JqCjw8Ci9MaWNlbnNlIChDNkZEMzc0MDlCNkQ0MkUxKSAKPj4gZW5kb2JqCgp4cmVmCjAgMTMKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDA1MjI0IDAwMDAwIG4gCjAwMDAwMDUxNjIgMDAwMDAgbiAKMDAwMDAwNTMxNSAwMDAwMCBuIAowMDAwMDA1MDM0IDAwMDAwIG4gCjAwMDAwMDQ3OTAgMDAwMDAgbiAKMDAwMDAwNTA4NCAwMDAwMCBuIAowMDAwMDA1NTk3IDAwMDAwIG4gCjAwMDAwMDUzMzcgMDAwMDAgbiAKMDAwMDAwNTQ2MyAwMDAwMCBuIAowMDAwMDAwMDE5IDAwMDAwIG4gCjAwMDAwMDU3MTcgMDAwMDAgbiAKMDAwMDAwNTgwMyAwMDAwMCBuIAp0cmFpbGVyCjw8Ci9TaXplIDEzIAovSW5mbyAxMSAwIFIgIAovUm9vdCAxIDAgUiAKPj4Kc3RhcnR4cmVmCjU4NTUKJSVFT0Y='
    @pdf_mgr = PDFManager.new
    @invoice_did = 'I006BM6RFLQLWJVB4BM'
    @pdf_mgr.stub!(:generate_pdf).with(@invoice_did).and_return({ :res => @base64string  })

    assert_equal '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ZGluZyAKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZCAKL05hbWUgL0hlbHZldGljYUIgCj4+IGVuZG9iagoKOSAwIG9iago8PAovVHlwZSAvRm9udCAKL1N1YnR5cGUgL1R5cGUxIAovRW5jb2RpbmcgL1dpbkFuc2lFbmNvZGluZyAKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZE9ibGlxdWUgCi9OYW1lIC9IZWx2ZXRpY2FCSSAKPj4gZW5kb2JqCgo3IDAgb2JqCjw8Ci9UeXBlIC9Gb250IAovU3VidHlwZSAvVHlwZTEgCi9FbmNvZGluZyAvV2luQW5zaUVuY29kaW5nIAovQmFzZUZvbnQgL0hlbHZldGljYSAKL05hbWUgL0hlbHZldGljYSAKPj4gZW5kb2JqCgoxMSAwIG9iago8PAovQ3JlYXRpb25EYXRlIChEOjIwMTMwNDA4MTQxMDIzKSAKL1Byb2R1Y2VyICh4bWxwZGYgNC45LjNNL1IpIAo+PiBlbmRvYmoKCjEyIDAgb2JqCjw8Ci9MaWNlbnNlIChDNkZEMzc0MDlCNkQ0MkUxKSAKPj4gZW5kb2JqCgp4cmVmCjAgMTMKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDA1MjI0IDAwMDAwIG4gCjAwMDAwMDUxNjIgMDAwMDAgbiAKMDAwMDAwNTMxNSAwMDAwMCBuIAowMDAwMDA1MDM0IDAwMDAwIG4gCjAwMDAwMDQ3OTAgMDAwMDAgbiAKMDAwMDAwNTA4NCAwMDAwMCBuIAowMDAwMDA1NTk3IDAwMDAwIG4gCjAwMDAwMDUzMzcgMDAwMDAgbiAKMDAwMDAwNTQ2MyAwMDAwMCBuIAowMDAwMDAwMDE5IDAwMDAwIG4gCjAwMDAwMDU3MTcgMDAwMDAgbiAKMDAwMDAwNTgwMyAwMDAwMCBuIAp0cmFpbGVyCjw8Ci9TaXplIDEzIAovSW5mbyAxMSAwIFIgIAovUm9vdCAxIDAgUiAKPj4Kc3RhcnR4cmVmCjU4NTUKJSVFT0Y=',
                 @pdf_mgr.generate_pdf(@invoice_did)[:res]
   # assert @invoice_mgr.get_invoice_by_accountdid(@account_did)[:result_count] > 0

  end

  test 'generate pdf mock test failure' do

    @pdf_mgr = PDFManager.new
    @invoice_did = 'I00Test'
    @pdf_mgr.stub!(:generate_pdf).with(@invoice_did).and_return({ :res => nil  })

    assert_not_equal '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ZGluZyAKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZCAKL05hbWUgL0hlbHZldGljYUIgCj4+IGVuZG9iagoKOSAwIG9iago8PAovVHlwZSAvRm9udCAKL1N1YnR5cGUgL1R5cGUxIAovRW5jb2RpbmcgL1dpbkFuc2lFbmNvZGluZyAKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZE9ibGlxdWUgCi9OYW1lIC9IZWx2ZXRpY2FCSSAKPj4gZW5kb2JqCgo3IDAgb2JqCjw8Ci9UeXBlIC9Gb250IAovU3VidHlwZSAvVHlwZTEgCi9FbmNvZGluZyAvV2luQW5zaUVuY29kaW5nIAovQmFzZUZvbnQgL0hlbHZldGljYSAKL05hbWUgL0hlbHZldGljYSAKPj4gZW5kb2JqCgoxMSAwIG9iago8PAovQ3JlYXRpb25EYXRlIChEOjIwMTMwNDA4MTQxMDIzKSAKL1Byb2R1Y2VyICh4bWxwZGYgNC45LjNNL1IpIAo+PiBlbmRvYmoKCjEyIDAgb2JqCjw8Ci9MaWNlbnNlIChDNkZEMzc0MDlCNkQ0MkUxKSAKPj4gZW5kb2JqCgp4cmVmCjAgMTMKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDA1MjI0IDAwMDAwIG4gCjAwMDAwMDUxNjIgMDAwMDAgbiAKMDAwMDAwNTMxNSAwMDAwMCBuIAowMDAwMDA1MDM0IDAwMDAwIG4gCjAwMDAwMDQ3OTAgMDAwMDAgbiAKMDAwMDAwNTA4NCAwMDAwMCBuIAowMDAwMDA1NTk3IDAwMDAwIG4gCjAwMDAwMDUzMzcgMDAwMDAgbiAKMDAwMDAwNTQ2MyAwMDAwMCBuIAowMDAwMDAwMDE5IDAwMDAwIG4gCjAwMDAwMDU3MTcgMDAwMDAgbiAKMDAwMDAwNTgwMyAwMDAwMCBuIAp0cmFpbGVyCjw8Ci9TaXplIDEzIAovSW5mbyAxMSAwIFIgIAovUm9vdCAxIDAgUiAKPj4Kc3RhcnR4cmVmCjU4NTUKJSVFT0Y=',
                     @pdf_mgr.generate_pdf(@invoice_did)[:res]
    # assert @invoice_mgr.get_invoice_by_accountdid(@account_did)[:result_count] > 0

  end
end