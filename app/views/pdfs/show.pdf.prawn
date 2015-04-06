pdf.text "Loan for #{@pdf.name}:", :size=>30, :style=>:bold
pdf.move_down(15)
pdf.text "Description: #{@pdf.notes}:", :size=>15, :style=>:bold

pdf.move_down(15)

	pdf.text "Loan amount: #{number_to_currency(@pdf.loan_ammount)}"
	pdf.text "Down payment: #{number_to_currency(@pdf.down_payment)}"
	pdf.text "Interest rate: #{@pdf.intrest_rate}"

