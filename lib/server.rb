require 'sinatra'

SENTENCE =   [["Stochastic",
               "Visualising",
                "Random"],
                
              ["data from",
                "gausian",
                "lambda"],
                
              ["distributions of",
               "genotypes originating from",
               "probabilistic"],

              ["radiation",
                "de-ionization",
                "reverse polarization"],

              ["in MRI scans",
               "recorded from the Hubble telescope",
               "produced by the Large Hadron Collider"]]

get '/' do
  sentence = ""
  SENTENCE.each do |element|
    sentence = "#{sentence} #{element[rand(element.size)]}"
  end
  sentence
end