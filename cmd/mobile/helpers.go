package kubenav

import (
	"github.com/kubenav/kubenav/pkg/shared"
)

// PrettifyYAML takes a json string as argument and returns a prettified yaml string. For that we have to unmarshal the
// json string into a map[string]interface{} which we can then marshal to the prettified yaml string.
func PrettifyYAML(jsonStr string) (string, error) {
	return shared.PrettifyYAML(jsonStr)
}

// CreateJSONPatch creates a path for two given json strings. This is needed when a user edits a resource, where the
// source argument is the manifest of the current resource and the target is the edited manifest. The returned patch
// can then be send to the Kubernetes API to edit the resource.
func CreateJSONPatch(source, target string) (string, error) {
	return shared.CreateJSONPatch(source, target)
}
