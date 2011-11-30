#encoding:UTF-8
=begin
  * Description:
  * Author:YeChangLun
  * Date: 2011-11-26
=end

#系统管理模型
class Dict < ActiveRecord::Base
  set_table_name "SYS_DICT"

  def self.category
    where("dict_type='0'")
  end
end
