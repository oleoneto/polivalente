json.extract! tag, :name
json.sgid tag.attachable_sgid
json.content render(partial: "polivalente/tags/tag", locals: { tag: tag }, formats: [:html])
json.url tag_url(tag.name) if defined?(tag_url)
