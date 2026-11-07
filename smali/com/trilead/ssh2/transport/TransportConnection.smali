.class public Lcom/trilead/ssh2/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

.field cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

.field csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

.field recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_packet_header_present:Z

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field send_mac_buffer:[B

.field final send_packet_header_buffer:[B

.field send_padd_blocksize:I

.field final send_padding_buffer:[B

.field send_seq_number:I

.field useRandomPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 28
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 31
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    const/16 v1, 0x8

    .line 35
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 39
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 41
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    const/4 v2, 0x5

    new-array v3, v2, [B

    .line 42
    iput-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    new-array v1, v1, [B

    .line 43
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    new-array v1, v2, [B

    .line 44
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 45
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 52
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 53
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {p1, v0, p2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 54
    invoke-static {}, Lcom/romzkie/ultrasshservice/StatisticGraphData;->getStatisticData()Lcom/romzkie/ultrasshservice/StatisticGraphData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/StatisticGraphData;->getDataTransferStats()Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    .line 55
    iput-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 61
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v1

    new-array v1, v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result p2

    new-array v0, p2, [B

    :cond_1
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 64
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 66
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    :cond_2
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 71
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 79
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result p2

    new-array p2, p2, [B

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 81
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 83
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    :cond_2
    return-void
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .line 99
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public peekNextMessageLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v1, v4}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 190
    iput-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x4

    .line 197
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 199
    sget v3, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    const-string v4, ")"

    if-gt v1, v3, :cond_2

    const/16 v3, 0xc

    if-lt v1, v3, :cond_2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1

    return v1

    .line 205
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal padding_length in packet from remote ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal packet size! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveMessage([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v0, v3, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    goto :goto_0

    .line 217
    :cond_0
    iput-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const/4 v5, 0x4

    .line 223
    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    .line 225
    sget v5, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    const-string v6, ")"

    if-gt v3, v5, :cond_6

    const/16 v5, 0xc

    if-lt v3, v5, :cond_6

    sub-int/2addr v3, v0

    sub-int/2addr v3, v4

    if-ltz v3, :cond_5

    if-ge v3, p3, :cond_4

    .line 236
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {p3, p1, p2, v3}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 237
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {p3, v5, v2, v0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 239
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz p3, :cond_2

    .line 241
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v6, v5

    invoke-virtual {p3, v5, v2, v6}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 243
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    invoke-virtual {p3, v5}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 244
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {p3, v5, v2, v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 245
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {p3, p1, p2, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 246
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {p3, v1, v2, v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 247
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-virtual {p3, v0, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 249
    :goto_1
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v0, p3

    if-ge v2, v0, :cond_2

    .line 251
    aget-byte p3, p3, v2

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    aget-byte v0, v0, v2

    if-ne p3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote sent corrupt MAC."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_2
    iget p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    add-int/2addr p3, v4

    iput p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 258
    sget-object p3, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x5a

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes payload"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 263
    :cond_3
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    int-to-long p2, v3

    invoke-virtual {p1, p2, p3}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->addBytesReceived(J)V

    return v3

    .line 234
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive buffer too small ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", need "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal padding_length in packet from remote ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal packet size! ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x4

    if-ge p4, v1, :cond_0

    const/4 p4, 0x4

    goto :goto_0

    :cond_0
    if-le p4, v0, :cond_1

    const/16 p4, 0x40

    :cond_1
    :goto_0
    add-int/lit8 v0, p3, 0x5

    add-int/2addr p4, v0

    .line 111
    iget v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v3, p4, v2

    if-eqz v3, :cond_2

    sub-int/2addr v2, v3

    add-int/2addr p4, v2

    :cond_2
    const/16 v2, 0x10

    if-ge p4, v2, :cond_3

    const/16 p4, 0x10

    :cond_3
    sub-int v0, p4, v0

    .line 123
    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 135
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    .line 136
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v6, v4

    aput-byte v6, v5, v2

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    .line 137
    aput-byte v7, v5, v6

    add-int/lit8 v6, v2, 0x2

    shr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    .line 138
    aput-byte v7, v5, v6

    add-int/lit8 v6, v2, 0x3

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    .line 139
    aput-byte v4, v5, v6

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 146
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    :cond_5
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    sub-int/2addr p4, v1

    shr-int/lit8 v4, p4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v4, p4, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x1

    .line 154
    aput-byte v4, v2, v5

    shr-int/lit8 v4, p4, 0x8

    int-to-byte v4, v4

    const/4 v6, 0x2

    .line 155
    aput-byte v4, v2, v6

    int-to-byte p4, p4

    const/4 v4, 0x3

    .line 156
    aput-byte p4, v2, v4

    int-to-byte p4, v0

    .line 157
    aput-byte p4, v2, v1

    .line 159
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    const/4 v1, 0x5

    invoke-virtual {p4, v2, v3, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 160
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 161
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {p4, v2, v3, v0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 163
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz p4, :cond_6

    .line 165
    iget v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    invoke-virtual {p4, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 166
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {p4, v2, v3, v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 167
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {p4, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 168
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {p4, v1, v3, v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 170
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    invoke-virtual {p4, v0, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 171
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v0

    invoke-virtual {p4, v0, v3, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 174
    :cond_6
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {p4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->flush()V

    .line 175
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    int-to-long v0, p3

    invoke-virtual {p4, v0, v1}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->addBytesSent(J)V

    .line 177
    sget-object p4, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x5a

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes payload"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 182
    :cond_7
    iget p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    return-void
.end method
