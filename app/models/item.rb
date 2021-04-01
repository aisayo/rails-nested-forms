class Item < ApplicationRecord
    belongs_to :store
    # accepts_nested_attributes_for :store
    # store=(objects)

    # custom writer

    def store_attributes=(attr_hash)
        # see if the object exists first
        # create it if it doesnt
        if !attr_hash.empty?
            self.store = Store.find_or_create_by(attr_hash) #return a store object
        end
            # let item know about this store object
    end 
end
