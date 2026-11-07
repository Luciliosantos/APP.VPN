.class public Lcom/trilead/ssh2/signature/DSASignature;
.super Ljava/lang/Object;
.source "DSASignature.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private r:Ljava/math/BigInteger;

.field private s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/signature/DSASignature;->r:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lcom/trilead/ssh2/signature/DSASignature;->s:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getR()Ljava/math/BigInteger;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSASignature;->r:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSASignature;->s:Ljava/math/BigInteger;

    return-object v0
.end method
