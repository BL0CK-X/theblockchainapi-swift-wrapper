# CCWebhookValidateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhookId** | **String** | The unique identifier of the webhook.  | 
**webhookSignature** | [**AnyCodable**](.md) | The signature we inluded in the webhook. The signature is from the Blockchain API and it ensures that the webhook is from us and not a malicioius actor.  | 
**timeSent** | **Double** | The time the webhook was sent.  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


