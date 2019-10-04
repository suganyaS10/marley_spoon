class BaseService
  def self.call(*args)
    new(*args).call
  end

  def self.search(*args)
    new(*args).search
  end
end
