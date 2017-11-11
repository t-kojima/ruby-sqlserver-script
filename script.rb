require './database'

# read file
targets = File.foreach('./test.txt').to_a.map(&:strip)

# read records
targets = AnyRecord.where(Column1: 'hoge', Column2: 'fuga')

# read records
targets = $con.select_all('SELECT * FROM <TABLENAME>')

targets.each do |target|
  # insert
  AnyRecord.create Column1: 'piyo', Column2: 'puge'
  # update
  target.update Column1: 'piyo', Column2: 'puge'
  # delete
  target.destroy

  # execute sql
  sql = "UPDATE <TABLENAME> SET Column1 = #{target[:Column1]} WHERE Column2 = 'fuga'"
  $con.execute(sql)
end
