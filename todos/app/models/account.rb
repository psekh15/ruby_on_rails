class Account < ApplicationRecord
  belongs_to :user

  validate :gender_is_valid
  validate :age_limiter 
  
    def gender_is_valid
      case gender
        when "male"
          true
        when "female"
          true
        when "N/A"
          true
        else errors.add(:gender, 'Please, state gender as male,female, or N/A')
      end
    end
  
    def age_limiter
      age_limit = 20..100
      unless age.present? && age_limit.include?(age)
        errors.add(:age, "Age must be between 20 and 100")
      end
    end

end
