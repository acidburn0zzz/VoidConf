import pynvim

@pynvim.plugin
class Main(object):
    def __init__(self, nvim):
        self.nvim = nvim

    @pynvim.function('TestFunction')
    def testfunction(self, args):
        self.nvim.command('echo "hello from Python"')
