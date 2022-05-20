# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

# Get the WorkflowErrorResponseHandler to Update
$WorkflowErrorResponseHandler = Get-IntersightWorkflowErrorResponseHandler -Name WorkflowErrorResponseHandlerName

# Update the WorkflowErrorResponseHandler
$error_response_handler1 = $WorkflowErrorResponseHandler | Set-IntersightWorkflowErrorResponseHandler -Description 'update demo error response handler'