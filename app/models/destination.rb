class Destination < ApplicationRecord
  belongs_to :user
  has_many :books

  def serializable_hash(opts)
    super(opts.merge(only: [:id, :name]))
  end
  
end
