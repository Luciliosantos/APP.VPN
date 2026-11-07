.class public Lcom/trilead/ssh2/KnownHosts;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
    }
.end annotation


# static fields
.field public static final HOSTKEY_HAS_CHANGED:I = 0x2

.field public static final HOSTKEY_IS_NEW:I = 0x1

.field public static final HOSTKEY_IS_OK:I

.field private static final LOGGER:Lcom/trilead/ssh2/log/Logger;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final publicKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/trilead/ssh2/KnownHosts;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    .line 58
    invoke-static {}, Lcom/trilead/ssh2/RandomFactory;->create()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/KnownHosts;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 87
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 82
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public static addHostkeyToFile(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 625
    array-length v0, p1

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 631
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    const/4 v1, 0x0

    .line 633
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 636
    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 637
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    .line 640
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 641
    invoke-virtual {v0, p2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 643
    invoke-static {p3}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write([C)V

    const-string p1, "\n"

    .line 644
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    .line 648
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string p3, "rw"

    invoke-direct {p2, p0, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 654
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 655
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    const/16 p3, 0xa

    if-eq p0, p3, :cond_2

    .line 657
    invoke-virtual {p2, p3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 660
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "ISO-8859-1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 661
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 629
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 626
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need at least one hostname specification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkHashed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "|1|"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x7c

    const/4 v2, 0x3

    .line 195
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v1

    .line 200
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 208
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    new-instance v2, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 218
    array-length v4, v0

    invoke-virtual {v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v2

    if-eq v4, v2, :cond_2

    return v1

    .line 221
    :cond_2
    invoke-static {v0, p2}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x0

    .line 223
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 224
    aget-byte v2, p2, v0

    aget-byte v4, p1, v0

    if-eq v2, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    :catch_0
    return v1
.end method

.method private checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 238
    invoke-static {v3}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->access$100(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {v3}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->access$200(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/trilead/ssh2/KnownHosts;->matchKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 244
    monitor-exit v0

    return p1

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 248
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static createBubblebabbleFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const-string v0, "sha1"

    .line 809
    invoke-static {v0, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 810
    invoke-static {p0}, Lcom/trilead/ssh2/KnownHosts;->rawToBubblebabbleFingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createHashedHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 152
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 154
    sget-object v1, Lcom/trilead/ssh2/KnownHosts;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 156
    invoke-static {v0, p0}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object p0

    .line 158
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 159
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|1|"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const-string v0, "md5"

    .line 792
    invoke-static {v0, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 793
    invoke-static {p0}, Lcom/trilead/ssh2/KnownHosts;->rawToHexFingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private decodeHostKey(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 603
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 608
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown hostkey type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getAllKnownHostEntries(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 260
    invoke-static {v3}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->access$100(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static hmacSha1Hash([BLjava/lang/String;)[B
    .locals 4

    .line 167
    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 171
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac;

    const-string v2, "hmac-sha1"

    invoke-direct {v0, v2, p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac;-><init>(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    :try_start_0
    const-string v2, "ISO-8859-1"

    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    array-length v3, v2

    invoke-virtual {v0, v2, p0, v3}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->update([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 180
    array-length v2, p1

    invoke-virtual {v0, p1, p0, v2}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->update([BII)V

    :goto_0
    new-array p1, v1, [B

    .line 185
    invoke-virtual {v0, p1, p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getMac([BI)V

    return-object p1

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Salt has wrong length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 313
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 315
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    aget-object v4, p1, v2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 325
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-ne v6, v7, :cond_1

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 340
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7c

    if-ne v7, v8, :cond_4

    .line 341
    invoke-direct {p0, v4, p2}, Lcom/trilead/ssh2/KnownHosts;->checkHashed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v6, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    .line 347
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3f

    .line 349
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    const/16 v7, 0x2a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_5

    goto :goto_2

    .line 355
    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    if-eqz v6, :cond_3

    return v1

    :cond_6
    const/16 v7, 0x3a

    .line 360
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 361
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v8, :cond_8

    .line 362
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    if-ge v8, v9, :cond_8

    if-ne v8, v7, :cond_8

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v6, :cond_3

    return v1

    .line 350
    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {p0, v4, v1, v7, v1}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v6, :cond_3

    return v1

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return v3
.end method

.method private initialize(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    new-array v0, v0, [C

    .line 421
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 423
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    sget-object v2, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0xa

    const-string v4, "Could not create known hosts file"

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 427
    :cond_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 429
    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_1

    .line 436
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 438
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 434
    :try_start_1
    invoke-virtual {v1, v0, v3, p1}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 427
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private initialize([C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/CharArrayReader;

    invoke-direct {v1, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 379
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "#"

    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, " "

    .line 385
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 386
    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 390
    aget-object v3, v1, v2

    .line 394
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 395
    invoke-virtual {v5}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    .line 402
    sget-object p1, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_4
    aget-object v2, v1, v6

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 407
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v1

    .line 410
    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Lcom/trilead/ssh2/KnownHosts;->addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/trilead/ssh2/IOWarningException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 413
    sget-object v2, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored invalid line \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private matchKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 446
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private pseudoRegex([CI[CI)Z
    .locals 5

    .line 457
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    .line 458
    array-length p1, p3

    if-ne p1, p4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 460
    :cond_1
    aget-char v0, p1, p2

    const/16 v3, 0x3f

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_7

    add-int/lit8 v0, p2, 0x1

    .line 464
    array-length p2, p1

    if-ne p2, v0, :cond_2

    return v2

    .line 467
    :cond_2
    aget-char p2, p1, v0

    if-eq p2, v4, :cond_5

    aget-char p2, p1, v0

    if-eq p2, v3, :cond_5

    .line 471
    :cond_3
    aget-char p2, p1, v0

    aget-char v3, p3, p4

    if-ne p2, v3, :cond_4

    add-int/lit8 p2, v0, 0x1

    add-int/lit8 v3, p4, 0x1

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result p2

    if-eqz p2, :cond_4

    return v2

    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 474
    array-length p2, p3

    if-ne p2, p4, :cond_3

    return v1

    .line 481
    :cond_5
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result p2

    if-eqz p2, :cond_6

    return v2

    :cond_6
    add-int/lit8 p4, p4, 0x1

    .line 484
    array-length p2, p3

    if-ne p2, p4, :cond_5

    return v1

    .line 489
    :cond_7
    array-length v0, p3

    if-ne v0, p4, :cond_8

    return v1

    .line 492
    :cond_8
    aget-char v0, p1, p2

    if-eq v0, v3, :cond_9

    aget-char v0, p1, p2

    aget-char v2, p3, p4

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method private static rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    const-string v0, "md5"

    .line 676
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    new-instance p0, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "sha1"

    .line 680
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    new-instance p0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    :goto_0
    const/4 v0, 0x0

    .line 689
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 690
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 703
    invoke-interface {p0, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 704
    invoke-interface {p0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result p1

    new-array p1, p1, [B

    .line 705
    invoke-interface {p0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([B)V

    return-object p1

    .line 701
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hostkey is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 697
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown key type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 685
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown hash type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static rawToBubblebabbleFingerprint([B)Ljava/lang/String;
    .locals 10

    const-string v0, "aeiouy"

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "bcdfghklmnprstvzx"

    .line 740
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x78

    .line 748
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    add-int/lit8 v7, v6, 0x1

    if-lt v7, v3, :cond_1

    .line 752
    array-length v8, p0

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    goto :goto_1

    .line 769
    :cond_0
    rem-int/lit8 v6, v4, 0x6

    aget-char v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    div-int/lit8 v6, v4, 0x6

    aget-char v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    mul-int/lit8 v6, v6, 0x2

    .line 754
    aget-byte v8, p0, v6

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v4

    rem-int/lit8 v8, v8, 0x6

    aget-char v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 755
    aget-byte v8, p0, v6

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v1, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    aget-byte v8, p0, v6

    and-int/lit8 v8, v8, 0x3

    div-int/lit8 v9, v4, 0x6

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x6

    aget-char v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 760
    aget-byte v9, p0, v8

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v1, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    .line 761
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    aget-byte v9, p0, v8

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v1, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v4, 0x5

    .line 764
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v6, v6, 0x7

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    rem-int/lit8 v4, v4, 0x24

    :cond_2
    :goto_2
    move v6, v7

    goto :goto_0

    .line 775
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static rawToHexFingerprint([B)Ljava/lang/String;
    .locals 5

    const-string v0, "0123456789abcdef"

    .line 716
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 720
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    const/16 v3, 0x3a

    .line 723
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v3, 0x4

    .line 725
    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 726
    aget-char v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 504
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->getAllKnownHostEntries(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 507
    invoke-static {v2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->access$300(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    .line 538
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 541
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 544
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 546
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 548
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 106
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 107
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v1, p3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object v6

    .line 109
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/trilead/ssh2/KnownHosts$1;)V

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 116
    :cond_1
    new-instance p1, Lcom/trilead/ssh2/IOWarningException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknwon host key type ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostnames may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHostkeys(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public addHostkeys([C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public getPreferredServerHostkeyAlgorithmOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 282
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 291
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 299
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/trilead/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-direct {p0, p2, p3}, Lcom/trilead/ssh2/KnownHosts;->decodeHostKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object p2

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I

    move-result p3

    if-nez p3, :cond_0

    return p3

    .line 581
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 589
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I

    move-result v2

    if-nez v2, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 p3, 0x2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return p3
.end method
