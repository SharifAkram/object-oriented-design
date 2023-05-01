# The terms small and big are not very precise.
# To compare different gears, bicyclists use the ratio of the numbers
# of their teeth. These ratios can be calculated with this simple Ruby script:

chainring = 52    # number of teeth
cog = 11
ratio = chainring / cog.to_f
puts ratio
# 4.7272727272727275

chainring = 30
cog = 27
ratio = chainring / cog.to_f
puts ratio
# 1.1111111111111112
