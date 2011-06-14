require 'sinatra'

SENTENCE =   [["Stochastic",
               "Visualising",
                "Random",
                "Predicting",
                "High performance",
                "Quantitative"
                "Mining"],
                
              ["data from",
                "gausian",
                "lambda",
                "poisson",
                "three-dimensional"],
                
              ["distributions of",
               "genotypes originating from",
               "probabilistic",
               "experimental",
               "dynamic"],

              ["radiation",
                "de-ionization",
                "reverse polarization",
                "anomalies"
                ],

              ["in MRI scans",
               "recorded from the Hubble telescope",
               "produced by the Large Hadron Collider",
               "detected in sub-aquatic samples"
               "suggesting the heat death of the Universe"
               ]]

get '/' do
  sentence = ""
  SENTENCE.each do |element|
    sentence = "#{sentence} #{element[rand(element.size)]}"
  end
  sentence
end