.class public Lcom/trilead/ssh2/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field public static final PROPERTY_TIMEOUT:Ljava/lang/String;

.field public static final TIMEOUT:J


# instance fields
.field authenticated:Z

.field connMonitors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field connectionClosed:Z

.field initDone:Z

.field isPartialSuccess:Z

.field packets:Ljava/util/Vector;

.field remainingMethods:[Ljava/lang/String;

.field tm:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->PROPERTY_TIMEOUT:Ljava/lang/String;

    const-string v1, "120000"

    .line 32
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connMonitors:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    new-array v1, v0, [Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 43
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 44
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 48
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    return-void
.end method

.method private initialize(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 139
    new-instance v0, Lcom/trilead/ssh2/packets/PacketServiceRequest;

    const-string v3, "ssh-userauth"

    invoke-direct {v0, v3}, Lcom/trilead/ssh2/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketServiceRequest;->getPayload()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 142
    new-instance v0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;

    const-string v3, "ssh-connection"

    invoke-direct {v0, v3, p1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 145
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 146
    new-instance v0, Lcom/trilead/ssh2/packets/PacketServiceAccept;

    array-length v3, p1

    invoke-direct {v0, p1, v1, v3}, Lcom/trilead/ssh2/packets/PacketServiceAccept;-><init>([BII)V

    .line 147
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 151
    aget-byte v3, p1, v1

    const/16 v4, 0x34

    if-ne v3, v4, :cond_0

    .line 153
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 154
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, p0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return v0

    .line 158
    :cond_0
    aget-byte v0, p1, v1

    const/16 v2, 0x33

    if-ne v0, v2, :cond_1

    .line 160
    new-instance v0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 162
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 163
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v1

    .line 167
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected SSH message (type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2
    iget-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    return p1
.end method


# virtual methods
.method public authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    const-string v1, "keyboard-interactive"

    .line 378
    invoke-virtual {p0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/String;

    .line 385
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;

    const-string v2, "ssh-connection"

    invoke-direct {v1, v2, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 394
    aget-byte p2, p1, v0

    const/16 v1, 0x34

    if-ne p2, v1, :cond_1

    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 397
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 p3, 0xff

    invoke-virtual {p2, p0, v0, p3}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return p1

    .line 401
    :cond_1
    aget-byte p2, p1, v0

    const/16 v1, 0x33

    if-ne p2, v1, :cond_2

    .line 403
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length p3, p1

    invoke-direct {p2, p1, v0, p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 405
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 406
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0

    .line 411
    :cond_2
    aget-byte p2, p1, v0

    const/16 v1, 0x3c

    if-ne p2, v1, :cond_4

    .line 413
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;

    array-length v1, p1

    invoke-direct {p2, p1, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    :try_start_1
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    move-result v5

    .line 420
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getEcho()[Z

    move-result-object v7

    move-object v2, p3

    .line 419
    invoke-interface/range {v2 .. v7}, Lcom/trilead/ssh2/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    .line 430
    :try_start_2
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto :goto_0

    .line 428
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Your callback may not return NULL!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 424
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in callback."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 436
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SSH message (type "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 379
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method keyboard-interactive not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 441
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 442
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Keyboard-interactive authentication failed."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public authenticateNone(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 322
    iget-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 326
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 327
    new-instance v0, Ljava/io/IOException;

    const-string v1, "None authentication failed."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    const-string v1, "password"

    .line 337
    invoke-virtual {p0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;

    const-string v2, "ssh-connection"

    invoke-direct {v1, v2, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 343
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 345
    aget-byte p2, p1, v0

    const/16 v1, 0x34

    if-ne p2, v1, :cond_0

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 348
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 v1, 0xff

    invoke-virtual {p2, p0, v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return p1

    .line 352
    :cond_0
    aget-byte p2, p1, v0

    const/16 v1, 0x33

    if-ne p2, v1, :cond_1

    .line 354
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v1, p1

    invoke-direct {p2, p1, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 356
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 357
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0

    .line 362
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SSH message (type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 338
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method password not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 367
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 368
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Password authentication failed."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 176
    invoke-interface {p2}, Lcom/trilead/ssh2/auth/AgentProxy;->getIdentities()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/auth/AgentIdentity;

    .line 177
    invoke-virtual {p0, p1, p2, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;Lcom/trilead/ssh2/auth/AgentIdentity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;Lcom/trilead/ssh2/auth/AgentIdentity;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "publickey"

    .line 187
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-interface {p3}, Lcom/trilead/ssh2/auth/AgentIdentity;->getPublicKeyBlob()[B

    move-result-object v5

    const/4 v0, 0x0

    if-nez v5, :cond_0

    return v0

    .line 195
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 196
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v2

    .line 198
    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    const/16 v2, 0x32

    .line 199
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 200
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v2, "ssh-connection"

    .line 201
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 203
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 204
    invoke-interface {p3}, Lcom/trilead/ssh2/auth/AgentIdentity;->getAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 205
    array-length v2, v5

    invoke-virtual {v1, v5, v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 207
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    .line 208
    invoke-interface {p3, v1}, Lcom/trilead/ssh2/auth/AgentIdentity;->sign([B)[B

    move-result-object v6

    .line 210
    new-instance v7, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    .line 211
    invoke-interface {p3}, Lcom/trilead/ssh2/auth/AgentIdentity;->getAlgName()Ljava/lang/String;

    move-result-object v4

    const-string v2, "ssh-connection"

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 212
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 214
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 216
    aget-byte p3, p1, v0

    const/16 v1, 0x34

    if-ne p3, v1, :cond_1

    .line 218
    iput-boolean p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 219
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 p3, 0xff

    invoke-virtual {p1, p0, v0, p3}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return p2

    .line 223
    :cond_1
    aget-byte p2, p1, v0

    const/16 p3, 0x33

    if-ne p2, p3, :cond_2

    .line 225
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length p3, p1

    invoke-direct {p2, p1, v0, p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 227
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 228
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0

    .line 233
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SSH message (type "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 188
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "publickey"

    const/4 v1, 0x0

    .line 242
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 244
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    invoke-static {p2, p3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decodeKeyPair([CLjava/lang/String;)Ljava/security/KeyPair;

    move-result-object p2

    .line 248
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p3

    .line 252
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 253
    invoke-virtual {v3, p3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->supportsKey(Ljava/security/PrivateKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v9

    .line 256
    new-instance p3, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {p3}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 258
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v2

    .line 260
    array-length v5, v2

    invoke-virtual {p3, v2, v1, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    const/16 v2, 0x32

    .line 261
    invoke-virtual {p3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 262
    invoke-virtual {p3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v2, "ssh-connection"

    .line 263
    invoke-virtual {p3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 266
    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 267
    array-length v0, v9

    invoke-virtual {p3, v9, v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 269
    invoke-virtual {p3}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p3

    .line 271
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {v3, p3, p2, p4}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    .line 273
    invoke-virtual {v3, p2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->encodeSignature([B)[B

    move-result-object v10

    .line 275
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v6, "ssh-connection"

    .line 276
    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v8

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 277
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 288
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 290
    aget-byte p2, p1, v1

    const/16 p3, 0x34

    if-ne p2, p3, :cond_2

    .line 292
    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 293
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 p2, 0xff

    invoke-virtual {p1, p0, v1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return v4

    .line 297
    :cond_2
    aget-byte p2, p1, v1

    const/16 p3, 0x33

    if-ne p2, p3, :cond_3

    .line 299
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length p3, p1

    invoke-direct {p2, p1, v1, p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 301
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 302
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v1

    .line 307
    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected SSH message (type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 285
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown private key type returned by the PEM decoder."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 312
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 313
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Publickey authentication failed."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method deQueue()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    add-long/2addr v1, v3

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 74
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    cmp-long v5, v3, v1

    if-gez v5, :cond_1

    .line 76
    iget-boolean v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 81
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    sget-wide v4, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 85
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is closed."

    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 96
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 97
    monitor-exit v0

    return-object v1

    .line 91
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid packets after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " milliseconds, you can increase the timeout by setting the property -D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/trilead/ssh2/auth/AuthenticationManager;->PROPERTY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=<MILLISECONDS>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 98
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getNextMessage()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->deQueue()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    aget-byte v2, v0, v1

    const/16 v3, 0x35

    if-eq v2, v3, :cond_1

    return-object v0

    .line 110
    :cond_1
    new-instance v2, Lcom/trilead/ssh2/packets/PacketUserauthBanner;

    array-length v3, v0

    invoke-direct {v2, v0, v1, v3}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;-><init>([BII)V

    .line 112
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->getBanner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connMonitors:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/ConnectionMonitor;

    const/16 v3, 0x65

    .line 116
    invoke-interface {v2, v3, v0}, Lcom/trilead/ssh2/ConnectionMonitor;->onReceiveInfo(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getPartialSuccess()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0
.end method

.method public getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 125
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    return-object p1
.end method

.method public handleEndMessage(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter p1

    const/4 v0, 0x1

    .line 466
    :try_start_0
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 467
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 450
    :try_start_0
    new-array v1, p2, [B

    const/4 v2, 0x0

    .line 451
    invoke-static {p1, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 454
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 456
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_0

    .line 461
    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 458
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 459
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error, peer is flooding us with authentication packets."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method methodPossible(Ljava/lang/String;)Z
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connMonitors:Ljava/util/Vector;

    return-void
.end method
