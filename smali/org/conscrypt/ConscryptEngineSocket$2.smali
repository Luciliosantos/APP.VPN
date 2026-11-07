.class Lorg/conscrypt/ConscryptEngineSocket$2;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/ConscryptEngineSocket;->getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

.field final synthetic val$socket:Lorg/conscrypt/ConscryptEngineSocket;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509ExtendedTrustManager;Lorg/conscrypt/ConscryptEngineSocket;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    iput-object p2, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$socket:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 144
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 152
    iget-object p3, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$socket:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {p3, p1, p2, v0}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 148
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 156
    iget-object p3, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$socket:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {p3, p1, p2, v0}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0}, Ljavax/net/ssl/X509ExtendedTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
