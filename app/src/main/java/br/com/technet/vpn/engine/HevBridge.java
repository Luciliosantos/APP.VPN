package br.com.technet.vpn.engine;

import org.amnezia.awg.hevtunnel.TProxyService;

public final class HevBridge {
    private HevBridge() {}
    public static void start(String configPath, int tunFd) {
        TProxyService.TProxyStartService(configPath, tunFd);
    }
    public static void stop() {
        TProxyService.TProxyStopService();
    }
}
