SELECT Employee.company_code,
        Company.founder,
        COUNT(DISTINCT lead_manager_code),
        COUNT(DISTINCT senior_manager_code),
        COUNT(DISTINCT manager_code),
        COUNT(DISTINCT employee_code)
FROM Employee
LEFT JOIN Company
    ON Employee.company_code = Company.company_code
GROUP BY Employee.company_code, Company.founder;