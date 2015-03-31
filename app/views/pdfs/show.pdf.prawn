pdf.text "Loan for #{@pdf.first_name}" " #{@pdf.last_name}:", :size=>30, :style=>:bold

pdf.move_down(30)

	pdf.text "Loan amount: #{@pdf.loan_ammount}"
	pdf.text "Down payment: #{@pdf.down_payment}"
	pdf.text "Interest rate: #{@pdf.intrest_rate}"

