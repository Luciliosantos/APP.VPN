.class Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;
.super Ljava/io/OutputStream;
.source "SFTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/jenkins/SFTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFTPOutputStream"
.end annotation


# instance fields
.field private final h:Lcom/trilead/ssh2/SFTPv3FileHandle;

.field private offset:J

.field final synthetic this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/jenkins/SFTPClient;Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    const-wide/16 p1, 0x0

    .line 135
    iput-wide p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

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

    .line 150
    iget-object v0, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;

    iget-object v1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

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

    .line 139
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;

    iget-object v1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    iget-wide v2, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/jenkins/SFTPClient;->write(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)V

    .line 145
    iget-wide p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    return-void
.end method
