class Pry
  STANDARD_PROMPT = [
                    proc do |v, nest|
                      if nest == 0
                        "pry(#{Pry.view(v)})> "
                      else
                        "pry(#{Pry.view(v)}):#{Pry.view(nest)}> "
                      end
                    end,
                    
                    proc do |v, nest|
                      if nest == 0
                        "pry(#{Pry.view(v)})* "
                      else
                        "pry(#{Pry.view(v)}):#{Pry.view(nest)}* "
                      end
                    end
                   ]

  SIMPLE_PROMPT = [proc { "pry> " }, proc { "pry* " }]
end
