class Faker
  LAT_LONGS = [
    [59.313369, 18.066330],
    [59.314245, 18.074226],
    [59.313194, 18.066673],
    [59.314771, 18.054314],
    [59.329835, 18.040581],
    [59.329485, 18.043327],
    [59.338065, 18.063927],
    [59.337540, 18.065643],
    [59.337189, 18.068390],
    [59.341391, 18.046074],
    [59.339641, 18.048477],
    [59.339816, 18.053970],
    [59.336314, 18.065987],
    [59.318145, 18.060129],
    [59.324476, 18.071721],
    [59.337323, 18.088496],
    [59.345832, 18.075471],
    [59.323530, 17.958012],
    [59.336139, 17.959385],
    [59.325807, 18.110447],
    [59.306184, 17.998180],
    [59.308112, 18.131046],
    [59.305133, 18.111477],
    [59.317726, 18.060279]
  ]

  def initialize
    @user_count = 0
    @deposit_count = 0
  end

  def rand_time(from, to=Time.now)
    Time.at(rand_in_range(from.to_f, to.to_f))
  end

  def rand_in_range(from, to)
    rand * (to - from) + from
  end

  def create_user
    @user_count += 1
    User.create!(
      email: "some_user_#{@user_count}@example.com",
      password: '12345678'
    )
  end

  def create_deposit(created_at: nil)
    @deposit_count += 1
    lat_long = LAT_LONGS.sample
    latitude = lat_long.first
    longitude = lat_long.last
    Deposit.create!(
      quantity: (6..30).to_a.sample,
      unit: %w(kg pcs).to_a.sample,
      category: Deposit::CATEGORIES.sample,
      latitude: latitude,
      longitude: longitude,
      created_at: created_at || rand_time(20.days.ago)
    )
  end
end
