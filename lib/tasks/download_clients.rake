namespace :download_client do

  desc "This task will import clients json file"
  task import: :environment do
    puts "Starting importing clients"
    file = File.read('clients_sc.json')
    data_hash = JSON.parse(file)
    
    data_hash['leads'].each do |lead|
      Client.create(first_name: lead['prénom'],
                    last_name: lead['nom'],
                    email: lead['email'],
                    phone_number: lead['téléphone'],
                    department: lead['Département'],
                    age: lead['age'].to_i,
                    revenue: lead['revenue'].to_i)
    end
    puts "#{Client.all.size} clients created"
  end

end