.class public Lnet/sourceforge/jsocks/SocksException;
.super Ljava/io/IOException;
.source "SocksException.java"


# static fields
.field static final UNASSIGNED_ERROR_MESSAGE:Ljava/lang/String; = "Unknown error message"

.field static final localErrorMessage:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x5539ded35b5a9b15L

.field static final serverReplyMessage:[Ljava/lang/String;


# instance fields
.field public errCode:I

.field errString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Succeeded"

    const-string v1, "General SOCKS server failure"

    const-string v2, "Connection not allowed by ruleset"

    const-string v3, "Network unreachable"

    const-string v4, "Host unreachable"

    const-string v5, "Connection refused"

    const-string v6, "TTL expired"

    const-string v7, "Command not supported"

    const-string v8, "Address type not supported"

    .line 12
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    const-string v1, "SOCKS server not specified"

    const-string v2, "Unable to contact SOCKS server"

    const-string v3, "IO error"

    const-string v4, "None of Authentication methods are supported"

    const-string v5, "Authentication failed"

    const-string v6, "General SOCKS fault"

    .line 18
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 35
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    shr-int/lit8 v0, p1, 0x10

    const-string v1, "Unknown error message"

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    array-length v2, v0

    if-gt p1, v2, :cond_0

    aget-object v1, v0, p1

    .line 39
    :cond_0
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 43
    sget-object p1, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    array-length v2, p1

    if-gt v0, v2, :cond_2

    aget-object v1, p1, v0

    .line 44
    :cond_2
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 57
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 58
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 67
    iget v0, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    return-object v0
.end method
