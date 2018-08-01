module SleepsHelper
	def h_mm_ss(sec)
	  min, ss = sec.to_i.divmod(60)
	  hh , mm = min.divmod(60)
	  "%dh%02dm%02ds" % [hh, mm, ss]
	end
end
