#### Example Request

    POST https://sandbox.lcp.points.com/v1/lps/<lp-id>/credits/
    Authorization: MAC id="...", ts="...", nonce="...", ext="...", mac="..."
    {
      "amount": 2000,
      "memberValidation": "https://sandbox.lcp.points.com/v1/lps/<lp-id>/mvs/<mv-id>"
    }

#### Example Response

    201 CREATED
    location: https://sandbox.lcp.points.com/v1/lps/<lp-id>/credits/<id>
    {
      "amount": 2000,
      "application": "https://lcp.points.com/v1/apps/<app-id>",
      "createdAt": "2014-04-19T07:56:08.482556Z",
      "links": {
        "self": {
          "href": "https://sandbox.lcp.points.com/v1/lps/<lp-id>/credits/<id>"
        }
      },
      "loyaltyProgram": "https://lcp.points.com/v1/lps/<lp-id>",
      "memberValidation": "https://sandbox.lcp.points.com/v1/lps/<lp-id>/mvs/<mv-id>",
      "order": "https://sandbox.lcp.points.com/v1/orders/<order-id>",
      "status": "success",
      "statusMessage": "success",
      "transactionId": "15786560",
      "type": "credit",
      "updatedAt": "2014-04-19T07:56:08.482556Z"
    }


