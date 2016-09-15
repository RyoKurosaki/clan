module Utils
  class CommonUtil
    def self.check_user_status(statusbool)
      status = ''
      if statusbool
        status = '外出中'
      else
        status = '在宅中'
      end
    end
  end
end
