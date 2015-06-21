shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel(
            h1("BMI Calculation. From Wikipedia: The body mass index (BMI), or Quetelet index, is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m2, resulting from weight in kilograms and height in metres. If pounds and inches are used, a conversion factor of 703 (kg/m2)/(lb/in2) must be applied. When the term BMI is used informally, the units are usually omitted."),
        ),
        sidebarPanel(
            numericInput('weight', 'Weight in pounds', 130, min = 50, max = 400, step = 5),
            numericInput('height', 'Height in inches', 66, min = 36, max = 84, step = 1),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results of Calculation'),
            #h4('You entered'),
            #verbatimTextOutput("inputValue$weight"),
            #verbatimTextOutput("inputValue$height"),
            h4('Which resulted in a BMI of '),
            verbatimTextOutput("Calculation")
        )
    )
)