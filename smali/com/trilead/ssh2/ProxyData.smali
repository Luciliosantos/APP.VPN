.class public interface abstract Lcom/trilead/ssh2/ProxyData;
.super Ljava/lang/Object;
.source "ProxyData.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
