def nyc_pigeon_organizer(data)
  ans = {}
    data.each do |info, hash|
      hash.each do |key, array|
        array.each do |name|
          if !ans.has_key?(name)
            ans[name] = {}
          end

          if !ans[name].has_key?(info)
            ans[name][info] = []
          end

          if !ans[name][info].include?(key)
            ans[name][info] << key.to_s
          end
        end
      end
    end
    ans
end
