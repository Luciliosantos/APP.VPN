.class Lcom/trilead/ssh2/SFTPv3Client$2;
.super Ljava/io/InputStream;
.source "SFTPv3Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/SFTPv3Client;->read(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private offset:J

.field final synthetic this$0:Lcom/trilead/ssh2/SFTPv3Client;

.field final synthetic val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/SFTPv3Client;Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->this$0:Lcom/trilead/ssh2/SFTPv3Client;

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 p1, 0x0

    .line 1477
    iput-wide p1, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->offset:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->this$0:Lcom/trilead/ssh2/SFTPv3Client;

    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 1481
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client$2;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1483
    aget-byte v0, v0, v1

    return v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1487
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->this$0:Lcom/trilead/ssh2/SFTPv3Client;

    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    iget-wide v2, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->offset:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/SFTPv3Client;->read(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1489
    :cond_0
    iget-wide p2, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->offset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->offset:J

    return p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1494
    iget-wide v0, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/trilead/ssh2/SFTPv3Client$2;->offset:J

    return-wide p1
.end method
