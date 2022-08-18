import std
import tfel.tests
import mtest

mtest.setVerboseMode(mtest.VerboseLevel.VERBOSE_QUIET)

m = mtest.MTest()
m.setAuthor("Thomas Helfer")
m.setDate("09/08/2022")
m.setModel('generic', 'src/libModel.so','ChemicalReaction1')
m.setStateVariableInitialValue('MolarConcentrationOfSpeciesB', 0.1)
m.setTimes([3.6 * i for i in range(0, 100)])
output_file = "ChemicalReaction1-python.res".format(k1)
m.setOutputFileName(output_file)
m.execute()
