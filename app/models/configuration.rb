class Configuration
  include Singleton
  attr_reader :config, :locale, :file

  def initialize
    start = Time.now
    load
    Rails.logger.info "Configuration from '#{@file}' loaded (#{"%.1f" % (Time.now - start)}ms)"
  end

  def load(options = {})
    #@locale = options[:locale] || I18n.locale
    #@locale = 'test' if Rails.env == 'test'
    #@file   = "#{Rails.root}/config/site/config.#{@locale}.yml"
    @file   = "#{Rails.root}/config/config.yml"# unless File.exist?(@file)
    @config = YAML.load_file(@file)
  end

  def save
    unless Configuration.instance.config.nil?
      File.open(Configuration.instance.file, 'w') do |f|
        f.write(Configuration.instance.config.to_yaml)#.ya2yaml(escape_as_utf8: true))
      end
    end
    Configuration.instance.load
  end

  def self.[](key)
    # Configuration.instance.load if Configuration.instance.locale != I18n.locale
    Configuration.instance.config[ key ]
  end

  def self.method_missing(sym, *args, &block)
    if self[(I18n.locale.to_s + "_" + sym.to_s).to_sym]
      self[(I18n.locale.to_s + "_" + sym.to_s).to_sym][:valu]
    elsif self[sym.to_sym]
      self[sym.to_sym][:valu]
    else
      super(sym, *args, &block)
    end
  end

  def self.categories
    cat = []
    Configuration.instance.config.each do |k, v|
      cat << v[:cate] unless v[:cate].blank?
    end
    return cat.uniq
  end

  def self.save
    Configuration.instance.save
  end

end

Conf = Configuration
