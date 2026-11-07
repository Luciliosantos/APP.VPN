.class public interface abstract Lnet/sourceforge/jsocks/server/ServerAuthenticator;
.super Ljava/lang/Object;
.source "ServerAuthenticator.java"


# virtual methods
.method public abstract checkRequest(Ljava/net/DatagramPacket;Z)Z
.end method

.method public abstract checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z
.end method

.method public abstract endSession()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
