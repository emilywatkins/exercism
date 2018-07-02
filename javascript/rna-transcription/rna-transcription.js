var DnaTranscriber = function () {
};

DnaTranscriber.prototype.toRna = function (nucleotide) {
  var complements = {
    'C': 'G',
    'G': 'C',
    'A': 'U',
    'T': 'A'
  };

  array = nucleotide.split('');
  transcription = array.map(n => complements[n]);

  if (transcription.includes(undefined)) {
    throw new Error('Invalid input');
  } else {
    return transcription.join('');
  }
};

module.exports = DnaTranscriber;
