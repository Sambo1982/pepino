# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'cucumber' do
	watch(%r{^app/models/.+$})                      { 'features' }
	watch(%r{^app/controllers/.+$})                      { 'features' }
	watch(%r{^app/views/.+$})                      { 'features' }
	watch(%r{^config/routes.rb})                      { 'features' }
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})          { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end