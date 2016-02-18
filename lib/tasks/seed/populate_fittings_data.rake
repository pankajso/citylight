namespace :seed do
  desc "rake seed:populate_fittings_data RAILS_ENV=<environment_name> --trace"
   task populate_fittings_data: :environment   do

     fitting_type_data =
           [
               {
                   type: '2 X 2',
                   sub_type: 0,
                   wattage: 90
               },
               {
                   type: 'Tube Light',
                   sub_type: 0,
                   wattage: 40
               },
               {
                   type: 'Down Light 5w',
                   sub_type: 0,
                   wattage: 5
               },
               {
                   type: 'Down Light 10w',
                   sub_type: 0,
                   wattage: 10
               },
               {
                   type: 'Down Light 15w',
                   sub_type: 0,
                   wattage: 15
               },
               {
                   type: 'Down Light 20w',
                   sub_type: 0,
                   wattage: 20
               },
               {
                   type: 'Down Light 25w',
                   sub_type: 0,
                   wattage: 25
               },
               {
                   type: 'Down Light 30w',
                   sub_type: 0,
                   wattage: 30
               },
               {
                   type: 'Down Light 35w',
                   sub_type: 0,
                   wattage: 35
               },
               {
                   type: 'Pannel Light 1(16w)',
                   sub_type: 0,
                   wattage: 16
               },
               {
                   type: 'Pannel Light 2 (32w)',
                   sub_type: 0,
                   wattage: 32
               }
             ]
    populate_fittings_data(fitting_type_data)
   end

  def populate_fittings_data(fitting_type_data)
    fitting_type_data.each do |record|
      puts "Processing Fitting record:
                          type:     #{record[:type]}
                          sub_type: #{record[:sub_type]}
                          wattage:  #{record[:wattage]}"

      Fitting.where(      type: record[:type],
                          sub_type: record[:sub_type],
                          wattage: record[:wattage]).first_or_create
    end
  end


end
