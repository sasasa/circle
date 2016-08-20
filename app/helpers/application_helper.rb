module AutoTranslation
  # モデル名_t というメソッドを定義する
  # モデル名_t{ カラム名 } => カラム名の翻訳
  # モデル名_t         => モデル名の翻訳
  Dir.glob(Rails.root.join('app','models','*.rb')).map { |file_path|
    File.basename(file_path, ".rb")
  }.each do |model_name|
    define_method(model_name.to_s + "_t") do |*attr|
      if attr && (attr = attr.first)
        t(attr, :scope => [:activerecord, :attributes, model_name]) &&
        t(attr.to_s.split.map(&:classify).join.underscore, :scope => [:activerecord, :attributes, model_name])
      else
        t(model_name, :scope => [:activerecord, :models])
      end
    end
  end
end

module ApplicationHelper
  include AutoTranslation
end