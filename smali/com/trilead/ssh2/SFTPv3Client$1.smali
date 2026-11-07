.class Lcom/trilead/ssh2/SFTPv3Client$1;
.super Ljava/io/OutputStream;
.source "SFTPv3Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/SFTPv3Client;->writeToFile(Ljava/lang/String;)Ljava/io/OutputStream;
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

    .line 1450
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->this$0:Lcom/trilead/ssh2/SFTPv3Client;

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 p1, 0x0

    .line 1451
    iput-wide p1, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->offset:J

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

    .line 1462
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->this$0:Lcom/trilead/ssh2/SFTPv3Client;

    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1453
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client$1;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->this$0:Lcom/trilead/ssh2/SFTPv3Client;

    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->val$h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    iget-wide v2, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->offset:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/SFTPv3Client;->write(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)V

    .line 1458
    iget-wide p1, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->offset:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/trilead/ssh2/SFTPv3Client$1;->offset:J

    return-void
.end method
