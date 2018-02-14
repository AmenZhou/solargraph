module Solargraph
  module LanguageServer
    module Message
      class Initialize < Base
        def process
          set_result(
            capabilities: {
              textDocumentSync: 1, # @todo What should this be?
              completionProvider: {
                resolveProvider: true,
                triggerCharacters: ['.', ':', '@']
              },
              hoverProvider: true,
              definitionProvider: true,
              signatureHelpProvider: {
                triggerCharacters: ['(', ',']
              }
            }
          )
        end
      end
    end
  end
end