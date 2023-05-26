SELECT book_value, annual_depreciation_rate,
annual_depreciation_rate*book_value AS [Depreciation deductions],
book_value-annual_depreciation_rate AS [Residual value]
FROM Registration_card_of_intangible_assets