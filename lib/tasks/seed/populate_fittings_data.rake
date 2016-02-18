namespace :seed do
  desc "rake seed:populate_fittings_data RAILS_ENV=<environment_name> --trace"
   task populate_fittings_data: :environment   do

     fitting_type_data =
           [
               {
                   typo: '2 X 2',
                   sub_typo: 0,
                   wattage: 90
               },
               {
                   typo: 'Tube Light',
                   sub_typo: 0,
                   wattage: 40
               },
               {
                   typo: 'Down Light 5w',
                   sub_typo: 0,
                   wattage: 5
               },
               {
                   typo: 'Down Light 10w',
                   sub_typo: 0,
                   wattage: 10
               },
               {
                   typo: 'Down Light 15w',
                   sub_typo: 0,
                   wattage: 15
               },
               {
                   typo: 'Down Light 20w',
                   sub_typo: 0,
                   wattage: 20
               },
               {
                   typo: 'Down Light 25w',
                   sub_typo: 0,
                   wattage: 25
               },
               {
                   typo: 'Down Light 30w',
                   sub_typo: 0,
                   wattage: 30
               },
               {
                   typo: 'Down Light 35w',
                   sub_typo: 0,
                   wattage: 35
               },
               {
                   typo: 'Pannel Light 1(16w)',
                   sub_typo: 0,
                   wattage: 16
               },
               {
                   typo: 'Pannel Light 2 (32w)',
                   sub_typo: 0,
                   wattage: 32
               }
             ]
    populate_fittings_data(fitting_type_data)
   end

  def populate_fittings_data(fitting_type_data)
    fitting_type_data.each do |record|
      puts "Processing Fitting record:
                          typo:     #{record[:typo]}
                          sub_typo: #{record[:sub_typo]}
                          wattage:  #{record[:wattage]}"

      Fitting.where(      typo: record[:typo],
                          sub_typo: record[:sub_typo],
                          wattage: record[:wattage]).first_or_create
    end
  end


end
