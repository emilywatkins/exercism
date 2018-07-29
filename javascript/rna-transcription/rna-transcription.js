var DnaTranscriber = function () {
};

DnaTranscriber.prototype.toRna = function (nucleotide) {
  var complements = {
    'C': 'G',
    'G': 'C',
    'A': 'U',
    'T': 'A'
  };

  var array = nucleotide.split('');

  array.forEach(function(n) {
    if (complements.hasOwnProperty(n) === false) {
      throw new Error('Invalid input');
    };
  });

  return array.map(n => complements[n]).join('');
};

module.exports = DnaTranscriber;
