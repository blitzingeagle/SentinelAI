import os
import matplotlib.pyplot as plt
import time
import numpy as np
import mpl_toolkits.mplot3d.axes3d as axes3d
import matplotlib.animation as animation
import matplotlib.gridspec as gridspec
import WalabotAPI
import scipy.misc

class Walabot:
    """ Control the walabot sensor"""

    def __init__(self):
        self.wa = WalabotAPI
        self.wa.Init()
        self.wa.SetSettingsFolder()

    def connect(self):
        """ Wait until a connection to the walabot is established """
        connecting = True
        while connecting:
            try:
                self.wa.ConnectAny()
                connecting = False
            except self.wa.WalabotError as err:
                connecting = True
                print('Could not connect... retrying')
                time.sleep(1)

    def calibrate(self):
        print('Starting calibration...')
        self.wa.StartCalibration()
        while self.wa.GetStatus()[0] == self.wa.STATUS_CALIBRATING:
            self.wa.Trigger()
        time.sleep(2)
        print('Calibration finished')

    def start(self):
        self.wa.Start()
        print('Walabot sensor active')

    def stop(self):
        print('Stopping...')
        self.wa.Stop()
        self.wa.Disconnect()
        print('Stopped')

    def setParameters(self, r, theta, phi, threshold, imgfilter):
        self.wa.SetProfile(self.wa.PROF_SENSOR)
        self.wa.SetArenaR(*r)
        self.wa.SetArenaTheta(*theta)
        self.wa.SetArenaPhi(*phi)
        self.wa.SetThreshold(threshold)
        self.wa.SetDynamicImageFilter(imgfilter)

    def getEnergy(self):
        self.wa.Trigger()
        return self.wa.GetImageEnergy()

    def getRawData(self):
        self.wa.Trigger()
        raster, x, y, z, power = self.wa.GetRawImage()
        energy = self.wa.GetImageEnergy()
        return raster, x, y, z, energy

    def getRawSlice(self):
        self.wa.Trigger()
        # Return the image slice, its dimensions, and its energy
        raster, x, y = self.wa.GetRawImageSlice()[0:3]
        return raster, x, y, self.wa.GetImageEnergy()


class LivePlot2D:
    def __init__(self):

        self.colors = [
   "000083", "000087", "00008B", "00008F", "000093", "000097", "00009B",
   "00009F", "0000A3", "0000A7", "0000AB", "0000AF", "0000B3", "0000B7",
   "0000BB", "0000BF", "0000C3", "0000C7", "0000CB", "0000CF", "0000D3",
   "0000D7", "0000DB", "0000DF", "0000E3", "0000E7", "0000EB", "0000EF",
   "0000F3", "0000F7", "0000FB", "0000FF", "0003FF", "0007FF", "000BFF",
   "000FFF", "0013FF", "0017FF", "001BFF", "001FFF", "0023FF", "0027FF",
   "002BFF", "002FFF", "0033FF", "0037FF", "003BFF", "003FFF", "0043FF",
   "0047FF", "004BFF", "004FFF", "0053FF", "0057FF", "005BFF", "005FFF",
   "0063FF", "0067FF", "006BFF", "006FFF", "0073FF", "0077FF", "007BFF",
   "007FFF", "0083FF", "0087FF", "008BFF", "008FFF", "0093FF", "0097FF",
   "009BFF", "009FFF", "00A3FF", "00A7FF", "00ABFF", "00AFFF", "00B3FF",
   "00B7FF", "00BBFF", "00BFFF", "00C3FF", "00C7FF", "00CBFF", "00CFFF",
   "00D3FF", "00D7FF", "00DBFF", "00DFFF", "00E3FF", "00E7FF", "00EBFF",
   "00EFFF", "00F3FF", "00F7FF", "00FBFF", "00FFFF", "03FFFB", "07FFF7",
   "0BFFF3", "0FFFEF", "13FFEB", "17FFE7", "1BFFE3", "1FFFDF", "23FFDB",
   "27FFD7", "2BFFD3", "2FFFCF", "33FFCB", "37FFC7", "3BFFC3", "3FFFBF",
   "43FFBB", "47FFB7", "4BFFB3", "4FFFAF", "53FFAB", "57FFA7", "5BFFA3",
   "5FFF9F", "63FF9B", "67FF97", "6BFF93", "6FFF8F", "73FF8B", "77FF87",
   "7BFF83", "7FFF7F", "83FF7B", "87FF77", "8BFF73", "8FFF6F", "93FF6B",
   "97FF67", "9BFF63", "9FFF5F", "A3FF5B", "A7FF57", "ABFF53", "AFFF4F",
   "B3FF4B", "B7FF47", "BBFF43", "BFFF3F", "C3FF3B", "C7FF37", "CBFF33",
   "CFFF2F", "D3FF2B", "D7FF27", "DBFF23", "DFFF1F", "E3FF1B", "E7FF17",
   "EBFF13", "EFFF0F", "F3FF0B", "F7FF07", "FBFF03", "FFFF00", "FFFB00",
   "FFF700", "FFF300", "FFEF00", "FFEB00", "FFE700", "FFE300", "FFDF00",
   "FFDB00", "FFD700", "FFD300", "FFCF00", "FFCB00", "FFC700", "FFC300",
   "FFBF00", "FFBB00", "FFB700", "FFB300", "FFAF00", "FFAB00", "FFA700",
   "FFA300", "FF9F00", "FF9B00", "FF9700", "FF9300", "FF8F00", "FF8B00",
   "FF8700", "FF8300", "FF7F00", "FF7B00", "FF7700", "FF7300", "FF6F00",
   "FF6B00", "FF6700", "FF6300", "FF5F00", "FF5B00", "FF5700", "FF5300",
   "FF4F00", "FF4B00", "FF4700", "FF4300", "FF3F00", "FF3B00", "FF3700",
   "FF3300", "FF2F00", "FF2B00", "FF2700", "FF2300", "FF1F00", "FF1B00",
   "FF1700", "FF1300", "FF0F00", "FF0B00", "FF0700", "FF0300", "FF0000",
   "FB0000", "F70000", "F30000", "EF0000", "EB0000", "E70000", "E30000",
   "DF0000", "DB0000", "D70000", "D30000", "CF0000", "CB0000", "C70000",
   "C30000", "BF0000", "BB0000", "B70000", "B30000", "AF0000", "AB0000",
   "A70000", "A30000", "9F0000", "9B0000", "970000", "930000", "8F0000",
   "8B0000", "870000", "830000", "7F0000"]

        self.fig = plt.figure()
        self.ax1 = self.fig.add_subplot(111, projection='polar')

    def plot(self, raster, phiLen, rLen, energy):
        self.ax1.clear()
        self.ax1.pcolormesh(raster)

        plt.pause(0.001)


class LivePlot3D:
    def __init__(self):
        self.fig = plt.figure()

        self.ax1 = self.fig.add_subplot(121, projection='3d')
        self.ax1.set_xlabel(r'$x$')
        self.ax1.set_ylabel(r'$y$')
        self.ax1.set_zlabel(r'$z$')

        self.ax2 = self.fig.add_subplot(122)
        self.maxEnergy = 0

    def plot(self, raster, rSize, tSize, pSize, energy):

        r = raster[0]
        theta = raster[1]
        phi = raster[2]

        # Convert to cartesian coords
        x = r * np.sin(theta) * np.cos(phi)
        y = r * np.sin(theta) * np.sin(phi)
        z = r * np.cos(theta)

        self.maxEnergy = max(self.maxEnergy, energy)

        self.ax1.clear()
        self.ax2.clear()

        self.ax1.plot_wireframe(x, y, z, rstride=10, cstride=10)
        self.ax1.set_xlim([-255, 255])
        self.ax1.set_ylim([-255, 255])
        self.ax1.set_zlim([-255, 255])

        self.ax2.bar(1, energy, width=0.5)
        self.ax2.set_ylim([0, self.maxEnergy])
        plt.pause(0.001)


class WalabotFace:
    def __init__(self):
        self.backgroundCalibration = []
        self.datalen = 10
        self.backgroundStd = 0
        self.backgroundMean = 0

        self.wlbt = Walabot()
        self.wlbt.connect()

        rParams = (10.0, 50.0, 0.6)
        tParams = (-20.0, 20.0, 2.0)
        pParams = (-32.0, 32.0, 1.0)
        # rParams = (10.0, 30.0, 2.0)
        # tParams = (-20.0, 20.0, 10.0)
        # pParams = (-45.0, 45.0, 2.0)
        threshold = 15
        imgfilter = WalabotAPI.FILTER_TYPE_MTI

        self.params = (rParams, tParams, pParams, threshold, imgfilter)
        self.wlbt.setParameters(*self.params)
        self.wlbt.calibrate()
        self.wlbt.start()

    def render2d(self):
        render = LivePlot2D()

        # Need a good way to break out of here
        while True:
            render.plot(*self.wlbt.getRawSlice())

    def render3d(self):
        render = LivePlot3D()

        while True:
            render.plot(*self.wlbt.getRawData())

    def scan(self, n=64):
        data = np.array(self.wlbt.getRawSlice()[0])
        return data[0:n, 0:n]

    def energy(self):
        return self.wlbt.getEnergy()

    def collectBaseline(self):
        print('Scanning background...')
        # percentComplete = 0
        # frac = self.datalen/10
        for i in range(self.datalen):
            print(i)
            # if i % frac == 0:
            #     print(str(percentComplete) + '% complete')
            #     percentComplete += 10
            self.backgroundCalibration.append(self.energy())
        print('Done scanning background...')
        self.backgroundMean = np.mean(self.backgroundCalibration)
        self.backgroundStd = np.std(self.backgroundCalibration)
        calibrationData = np.array([self.datalen, self.backgroundMean, self.backgroundStd])
        np.savetxt('calibrationData.txt', calibrationData)

    def loadCalibrationData(self):
        calibrationData = np.loadtxt('calibrationData.txt')
        datalen = int(calibrationData[0])
        backgroundMean = calibrationData[1]
        backgroundStd = calibrationData[2]
        return datalen, backgroundMean, backgroundStd

    def recognize(self):
        datalen, backgroundMean, backgroundStd = self.loadCalibrationData()
        print('Detecting...')
        data = []
        # percentComplete = 0
        # frac = self.datalen/10
        for i in range(self.datalen):
            # print(i)
            # if i % frac == 0:
            #     print(str(percentComplete) + '% complete')
            #     percentComplete += 10
            data.append(self.energy())
        print('Done detecting')

        data = np.array(data)

        # print('Mean: ' + str(backgroundMean))
        # print('std: ' + str(backgroundStd))
        # print('datalen: ' + str(datalen))
        # Calculate the test statistic

        topthing = backgroundMean - data.mean()
        firstbottom = np.square(backgroundStd)/float(datalen)
        secondbottom = np.square(np.std(data))/float(len(data))
        bottom = np.sqrt(firstbottom + secondbottom)
        # print('f:', firstbottom)
        # print('s:', secondbottom)
        # print('b:', bottom)
        t = topthing/bottom


        # t = (backgroundMean - data.mean())/np.sqrt((np.square(backgroundStd)/datalen)+(np.square(np.std(data))/self.datalen))
        # print('T value: ' + str(t))

        # Generate the t distribution
        s = np.random.standard_t(datalen-1, size=100000)

        # Calculate the p value
        p = np.sum(s < t) / float(len(s))
        # print('P value: ' + str(p))
        # print(p)
        if p < 0.001:
            return True
        else:
            return False


def walabotGenerateTrainingData():
    w = WalabotFace()
    basedir = os.path.join('faces', 'train')
    for i in range(10):
        print('Scanning real faces in ' + str(10-i))
        time.sleep(1)

    fh = open(os.path.join(basedir, 'labels.txt'), 'w+')
    for i in range(50):
        print('Scanning real face ' + str(i))
        fname = 'face_real_' + str(i) + '.png'
        fh.write(fname + ' 1\n')
        plt.imsave(os.path.join(basedir, fname), w.scan())

    for i in range(10):
        print('Scanning fake faces in ' + str(10-i))
        time.sleep(1)

    for i in range(50):
        print('Scanning fake face ' + str(i))
        fname = 'face_fake_' + str(i) + '.png'
        fh.write(fname + ' 0\n')
        plt.imsave(os.path.join(basedir, fname), w.scan())

    fh.close()
    del w

def walabotGenerateTestingData():
    w = WalabotFace()

    basedir = os.path.join('faces', 'test')
    for i in range(10):
        print('Scanning real faces in ' + str(10-i))
        time.sleep(1)

    for i in range(10):
        print('Scanning real face ' + str(i))
        fname = 'face_real_' + str(i) + '.png'
        plt.imsave(os.path.join(basedir, fname), w.scan())

    for i in range(10):
        print('Scanning fake faces in ' + str(10-i))
        time.sleep(1)

    for i in range(10):
        print('Scanning fake face ' + str(i))
        fname = 'face_fake_' + str(i) + '.png'
        plt.imsave(os.path.join(basedir, fname), w.scan())

    del w

def main():
    wlbt = Walabot()
    wlbt.connect()

    rParams = (10.0, 50.0, 0.6)
    tParams = (-20.0, 20.0, 2.0)
    pParams = (-32.0, 32.0, 1.0)
    threshold = 15
    imgfilter = WalabotAPI.FILTER_TYPE_MTI

    wlbt.setParameters(rParams, tParams, pParams, threshold, imgfilter)
    wlbt.calibrate()
    wlbt.start()

    render3d = LivePlot3D()
    #render2d = LivePlot2D()

    while True:
        #render2d.plot(*wlbt.getRawSlice())
        render3d.plot(*wlbt.getRawData())
    plt.show()

    wlbt.stop()


if __name__ == '__main__':
    w = WalabotFace()
    #w.collectBaseline()
    # w.render3d()

    while True:
        print(w.recognize())
        time.sleep(0.5)


    # while True:
    #     w.recognize()
    #     time.sleep(0.5)

    # while True:
    #     s = w.scan()
    #     a = np.reshape(s, w.scan().shape[0] * w.scan().shape[1])
    #     print(a.sum())
    # del w

