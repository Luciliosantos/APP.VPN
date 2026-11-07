.class public Lcom/trilead/ssh2/DHGexParameters;
.super Ljava/lang/Object;
.source "DHGexParameters.java"


# static fields
.field private static final MAX_ALLOWED:I = 0x2000

.field private static final MIN_ALLOWED:I = 0x400


# instance fields
.field private final max_group_len:I

.field private final min_group_len:I

.field private final pref_group_len:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x400

    const/16 v1, 0x800

    const/16 v2, 0x1000

    .line 33
    invoke-direct {p0, v0, v1, v2}, Lcom/trilead/ssh2/DHGexParameters;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_0

    .line 49
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->pref_group_len:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->min_group_len:I

    .line 51
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->max_group_len:I

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pref_group_len out of range!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    if-lt p1, v0, :cond_4

    const/16 v1, 0x2000

    if-gt p1, v1, :cond_4

    if-lt p2, v0, :cond_3

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p2, p1, :cond_1

    if-gt p2, p3, :cond_1

    if-lt p3, p1, :cond_0

    .line 85
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->min_group_len:I

    .line 86
    iput p2, p0, Lcom/trilead/ssh2/DHGexParameters;->pref_group_len:I

    .line 87
    iput p3, p0, Lcom/trilead/ssh2/DHGexParameters;->max_group_len:I

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max_group_len must not be smaller than min_group_len!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pref_group_len is incompatible with min and max!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max_group_len out of range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pref_group_len out of range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "min_group_len out of range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMax_group_len()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/trilead/ssh2/DHGexParameters;->max_group_len:I

    return v0
.end method

.method public getMin_group_len()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/trilead/ssh2/DHGexParameters;->min_group_len:I

    return v0
.end method

.method public getPref_group_len()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/trilead/ssh2/DHGexParameters;->pref_group_len:I

    return v0
.end method
