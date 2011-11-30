require "sys_model"
$application = Hash.new

def cache_dict
  Dict.category.each do|d|
      items = Dict.find(:all,:conditions => ["dict_type='1' and active='1' and dict_code = ?",d.dict_code],:order => "priority,dict_value")
      dict = Hash.new
      items.each do|i|
         dict[i.dict_value]  = i.dict_label
      end
   $application[d.dict_code] = dict
  end
end

#cache_dict
cache_dict