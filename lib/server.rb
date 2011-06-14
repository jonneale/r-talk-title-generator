require 'sinatra'

SENTENCE =   [["Stochastic",
               "Visualising",
                "Random",
                "Predicting"],
                
              ["data from",
                "gausian",
                "lambda",
                "poisson"],
                
              ["distributions of",
               "genotypes originating from",
               "probabilistic"],

              ["radiation",
                "de-ionization",
                "reverse polarization",
                "anomalies"],

              ["in MRI scans",
               "recorded from the Hubble telescope",
               "produced by the Large Hadron Collider",
               "detected in sub-aquatic samples"]]

get '/' do
  sentence = ""
  SENTENCE.each do |element|
    sentence = "#{sentence} #{element[rand(element.size)]}"
  end
  sentence
end