.class public Lcom/trilead/ssh2/compression/CompressionFactory;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    }
.end annotation


# static fields
.field static compressors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    .line 42
    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib"

    const-string v3, "com.trilead.ssh2.compression.Zlib"

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib@openssh.com"

    const-string v3, "com.trilead.ssh2.compression.ZlibOpenSSH"

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "none"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCompressorList([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 50
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 51
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/trilead/ssh2/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;
    .locals 3

    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/trilead/ssh2/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    move-result-object v0

    const-string v1, ""

    .line 57
    iget-object v2, v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    iget-object v0, v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/compression/ICompressor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultCompressorList()[Ljava/lang/String;
    .locals 4

    .line 70
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 71
    :goto_0
    sget-object v2, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    sget-object v2, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    .line 73
    new-instance v3, Ljava/lang/String;

    iget-object v2, v2, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    .locals 3

    const/4 v0, 0x0

    .line 79
    :goto_0
    sget-object v1, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 80
    sget-object v1, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    .line 81
    iget-object v2, v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
