import std
import tfel.tests
import mtest

mtest.setVerboseMode(mtest.VerboseLevel.VERBOSE_QUIET)

for k1 in [0.016666666666666666, 0.008333333333333333,
           0.004166666666666667, 0.033333333333333333,
           0.06666666666666667]:
    m = mtest.MTest()
    m.setAuthor("Thomas Helfer")
    m.setDate("09/08/2022")
    m.setModel('generic', 'src/libModel.so','ChemicalReaction1')
    m.setStateVariableInitialValue('MolarConcentrationOfSpeciesB', 0.1)
    m.setParameter('ReactionRateCoefficientAB', float(k1))
    m.setTimes([3.6 * i for i in range(0, 100)])
    output_file = "ChemicalReaction1-python-parametric-{}.res".format(k1)
    m.setOutputFileName(output_file)
    m.execute()
