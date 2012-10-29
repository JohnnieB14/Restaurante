module TablesHelper

def code
  #c = (((0..9).to_a.shuffle[1..3].join) + (('a'..'z').to_a.shuffle[1..3].join)+['!','#','$'].shuffle.join).split('').shuffle.join
  (((0..9).to_a.shuffle[1..3].join) + (('a'..'z').to_a.shuffle[1..3].join)).split('').shuffle.join
end

end
