FactoryGirl.define do
  factory :user do
    email 'a@a.com'
    password '1234qwer'
    admin false
  end

  # We could call
  # user = FactoryGirl.create :user, admin: true
  # or we can just create another factory:
  factory :admin, class: :user do
    email 'admin@admin.com'
    password '1234qwer'
    admin true
  end
end
