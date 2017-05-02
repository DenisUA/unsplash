module PhotosHelper
  %w[raw full regular small thumb].each do |method|
    define_method "#{method}_url" do |image_data|
      image_data['urls'][method]
    end
  end
end
