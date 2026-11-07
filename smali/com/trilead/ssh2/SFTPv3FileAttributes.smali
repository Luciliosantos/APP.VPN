.class public Lcom/trilead/ssh2/SFTPv3FileAttributes;
.super Ljava/lang/Object;
.source "SFTPv3FileAttributes.java"


# instance fields
.field public atime:Ljava/lang/Long;

.field public gid:Ljava/lang/Integer;

.field public mtime:Ljava/lang/Long;

.field public permissions:Ljava/lang/Integer;

.field public size:Ljava/lang/Long;

.field public uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 22
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 68
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 74
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getOctalPermissions()Ljava/lang/String;
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7

    :goto_0
    if-lez v2, :cond_1

    const/16 v3, 0x30

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isRegularFile()Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSymlink()Z
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0xa000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
