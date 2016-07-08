class Card < ActiveRecord::Base
has_many :telefones
has_many :deals
has_many :contacts
has_many :events
has_many :faces

def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    card = find_by_id(row["id"]) || new
    card.attributes = row.to_hash.slice(*accessible_attributes)
    card.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore)
  when ".xls" then Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  else raise "Неизвестный тип файла: #{file.original_filename}"
  end
end

  validates :client, presence: true,
                    length: { minimum: 3 }
  validates :address, presence: true,
                    length: { minimum: 3 }

end
