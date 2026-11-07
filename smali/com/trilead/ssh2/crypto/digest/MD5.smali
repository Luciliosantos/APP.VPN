.class public final Lcom/trilead/ssh2/crypto/digest/MD5;
.super Ljava/lang/Object;
.source "MD5.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/Digest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final padding:[B


# instance fields
.field private final block:[B

.field private count:J

.field private state0:I

.field private state1:I

.field private state2:I

.field private state3:I

.field private final x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_0

    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MD5;->padding:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 40
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    .line 49
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/MD5;->reset()V

    return-void
.end method

.method private static final FF(IIIIIII)I
    .locals 1

    and-int/2addr p2, p1

    not-int v0, p1

    and-int/2addr p3, v0

    or-int/2addr p2, p3

    add-int/2addr p2, p4

    add-int/2addr p2, p6

    add-int/2addr p0, p2

    shl-int p2, p0, p5

    rsub-int/lit8 p3, p5, 0x20

    ushr-int/2addr p0, p3

    or-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method private static final GG(IIIIIII)I
    .locals 1

    and-int v0, p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p2, v0

    add-int/2addr p2, p4

    add-int/2addr p2, p6

    add-int/2addr p0, p2

    shl-int p2, p0, p5

    rsub-int/lit8 p3, p5, 0x20

    ushr-int/2addr p0, p3

    or-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method private static final HH(IIIIIII)I
    .locals 0

    xor-int/2addr p2, p1

    xor-int/2addr p2, p3

    add-int/2addr p2, p4

    add-int/2addr p2, p6

    add-int/2addr p0, p2

    shl-int p2, p0, p5

    rsub-int/lit8 p3, p5, 0x20

    ushr-int/2addr p0, p3

    or-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method private static final II(IIIIIII)I
    .locals 0

    not-int p3, p3

    or-int/2addr p3, p1

    xor-int/2addr p2, p3

    add-int/2addr p2, p4

    add-int/2addr p2, p6

    add-int/2addr p0, p2

    shl-int p2, p0, p5

    rsub-int/lit8 p3, p5, 0x20

    ushr-int/2addr p0, p3

    or-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method private static final encode([BII)V
    .locals 2

    int-to-byte v0, p2

    .line 78
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 79
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 80
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 81
    aput-byte p2, p0, p1

    return-void
.end method

.method private final transform([BI)V
    .locals 45

    move-object/from16 v0, p0

    .line 86
    iget v1, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    .line 87
    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    .line 88
    iget v10, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    .line 89
    iget v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    const/4 v11, 0x0

    move/from16 v2, p2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    const/16 v12, 0x8

    const/4 v13, 0x4

    if-ge v3, v4, :cond_0

    .line 93
    iget-object v5, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v12

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v13

    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v5, v2, v11

    const/4 v6, 0x7

    const v7, -0x28955b88

    move v2, v9

    move v3, v10

    move v4, v8

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v14

    .line 100
    iget-object v1, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v21, 0x1

    aget v6, v1, v21

    const/16 v7, 0xc

    const v1, -0x173848aa

    move v2, v8

    move v3, v14

    move v4, v9

    move v5, v10

    move v8, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v22

    .line 101
    iget-object v1, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v29, 0x2

    aget v6, v1, v29

    const/16 v7, 0x11

    const v8, 0x242070db

    move v2, v10

    move/from16 v3, v22

    move v4, v14

    move v5, v9

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v30

    .line 102
    iget-object v1, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v10, 0x3

    aget v6, v1, v10

    const/16 v7, 0x16

    const v8, -0x3e423112

    move v2, v9

    move/from16 v3, v30

    move/from16 v4, v22

    move v5, v14

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 103
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v18, v2, v13

    const/16 v19, 0x7

    const v20, -0xa83f051

    move v15, v1

    move/from16 v16, v30

    move/from16 v17, v22

    invoke-static/range {v14 .. v20}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 104
    iget-object v3, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v9, 0x5

    aget v26, v3, v9

    const/16 v27, 0xc

    const v28, 0x4787c62a

    move/from16 v23, v2

    move/from16 v24, v1

    move/from16 v25, v30

    invoke-static/range {v22 .. v28}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v14

    .line 105
    iget-object v3, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v22, 0x6

    aget v34, v3, v22

    const/16 v35, 0x11

    const v36, -0x57cfb9ed

    move/from16 v31, v14

    move/from16 v32, v2

    move/from16 v33, v1

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v23

    .line 106
    iget-object v3, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v24, 0x7

    aget v35, v3, v24

    const/16 v36, 0x16

    const v37, -0x2b96aff

    move/from16 v31, v1

    move/from16 v32, v23

    move/from16 v33, v14

    move/from16 v34, v2

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 107
    iget-object v3, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v6, v3, v12

    const/4 v7, 0x7

    const v8, 0x698098d8

    move v3, v1

    move/from16 v4, v23

    move v5, v14

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v30

    .line 108
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v3, 0x9

    aget v18, v2, v3

    const/16 v19, 0xc

    const v20, -0x74bb0851

    move/from16 v15, v30

    move/from16 v16, v1

    move/from16 v17, v23

    invoke-static/range {v14 .. v20}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 109
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xa

    aget v41, v4, v5

    const/16 v42, 0x11

    const v43, -0xa44f

    move/from16 v37, v23

    move/from16 v38, v2

    move/from16 v39, v30

    move/from16 v40, v1

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v14

    .line 110
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v6, 0xb

    aget v42, v4, v6

    const/16 v43, 0x16

    const v44, -0x76a32842

    move/from16 v38, v1

    move/from16 v39, v14

    move/from16 v40, v2

    move/from16 v41, v30

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 111
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v7, 0xc

    aget v34, v4, v7

    const/16 v35, 0x7

    const v36, 0x6b901122

    move/from16 v31, v1

    move/from16 v32, v14

    move/from16 v33, v2

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v4

    .line 112
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v23, 0xd

    aget v35, v8, v23

    const/16 v36, 0xc

    const v37, -0x2678e6d

    move/from16 v31, v2

    move/from16 v32, v4

    move/from16 v33, v1

    move/from16 v34, v14

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 113
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v25, 0xe

    aget v18, v8, v25

    const/16 v19, 0x11

    const v20, -0x5986bc72

    move v15, v2

    move/from16 v16, v4

    move/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v30

    .line 114
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v14, 0xf

    aget v35, v8, v14

    const/16 v36, 0x16

    const v37, 0x49b40821

    move/from16 v31, v1

    move/from16 v32, v30

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 117
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v8, v21

    const/16 v42, 0x5

    const v43, -0x9e1da9e

    move/from16 v37, v4

    move/from16 v38, v1

    move/from16 v39, v30

    move/from16 v40, v2

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v4

    .line 118
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v8, v22

    const/16 v43, 0x9

    const v44, -0x3fbf4cc0

    move/from16 v38, v2

    move/from16 v39, v4

    move/from16 v40, v1

    move/from16 v41, v30

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 119
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v6

    const/16 v35, 0xe

    const v36, 0x265e5a51

    move/from16 v31, v2

    move/from16 v32, v4

    move/from16 v33, v1

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v8

    .line 120
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v15, v11

    const/16 v43, 0x14

    const v44, -0x16493856

    move/from16 v38, v1

    move/from16 v39, v8

    move/from16 v40, v2

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v30

    .line 121
    iget-object v1, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v1, v9

    const/16 v36, 0x5

    const v37, -0x29d0efa3

    move/from16 v31, v4

    move/from16 v32, v30

    move/from16 v33, v8

    move/from16 v34, v2

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 122
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v4, v5

    const/16 v36, 0x9

    const v37, 0x2441453

    move/from16 v31, v2

    move/from16 v32, v1

    move/from16 v33, v30

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 123
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v14

    const/16 v42, 0xe

    const v43, -0x275e197f

    move/from16 v37, v8

    move/from16 v38, v2

    move/from16 v39, v1

    move/from16 v40, v30

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v4

    .line 124
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v13

    const/16 v35, 0x14

    const v36, -0x182c0438

    move/from16 v31, v4

    move/from16 v32, v2

    move/from16 v33, v1

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v8

    .line 125
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v15, v3

    const/16 v43, 0x5

    const v44, 0x21e1cde6

    move/from16 v38, v1

    move/from16 v39, v8

    move/from16 v40, v4

    move/from16 v41, v2

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v30

    .line 126
    iget-object v1, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v1, v25

    const/16 v43, 0x9

    const v44, -0x3cc8f82a

    move/from16 v38, v2

    move/from16 v39, v30

    move/from16 v40, v8

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 127
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v10

    const/16 v36, 0xe

    const v37, -0xb2af279

    move/from16 v32, v1

    move/from16 v33, v30

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 128
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v12

    const/16 v42, 0x14

    const v43, 0x455a14ed

    move/from16 v37, v8

    move/from16 v38, v2

    move/from16 v39, v1

    move/from16 v40, v30

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v4

    .line 129
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v23

    const/16 v35, 0x5

    const v36, -0x561c16fb

    move/from16 v31, v4

    move/from16 v32, v2

    move/from16 v33, v1

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v8

    .line 130
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v15, v29

    const/16 v36, 0x9

    const v37, -0x3105c08

    move/from16 v31, v1

    move/from16 v32, v8

    move/from16 v33, v4

    move/from16 v34, v2

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 131
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v15, v24

    const/16 v43, 0xe

    const v44, 0x676f02d9

    move/from16 v39, v1

    move/from16 v40, v8

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v30

    .line 132
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v7

    const/16 v36, 0x14

    const v37, -0x72d5b376

    move/from16 v31, v4

    move/from16 v32, v30

    move/from16 v33, v1

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 135
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v9

    const/16 v42, 0x4

    const v43, -0x5c6be

    move/from16 v37, v8

    move/from16 v38, v2

    move/from16 v39, v30

    move/from16 v40, v1

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v4

    .line 136
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v8, v12

    const/16 v43, 0xb

    const v44, -0x788e097f

    move/from16 v38, v1

    move/from16 v39, v4

    move/from16 v40, v2

    move/from16 v41, v30

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 137
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v6

    const/16 v35, 0x10

    const v36, 0x6d9d6122

    move/from16 v31, v1

    move/from16 v32, v4

    move/from16 v33, v2

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v8

    .line 138
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v15, v25

    const/16 v43, 0x17

    const v44, -0x21ac7f4

    move/from16 v38, v2

    move/from16 v39, v8

    move/from16 v40, v1

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v30

    .line 139
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v21

    const/16 v36, 0x4

    const v37, -0x5b4115bc

    move/from16 v31, v4

    move/from16 v32, v30

    move/from16 v33, v8

    move/from16 v34, v1

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 140
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v4, v13

    const/16 v36, 0xb

    const v37, 0x4bdecfa9    # 2.9204306E7f

    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v30

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 141
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v24

    const/16 v42, 0x10

    const v43, -0x944b4a0

    move/from16 v37, v8

    move/from16 v38, v1

    move/from16 v39, v2

    move/from16 v40, v30

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v4

    .line 142
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v5

    const/16 v35, 0x17

    const v36, -0x41404390

    move/from16 v31, v4

    move/from16 v32, v1

    move/from16 v33, v2

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v8

    .line 143
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v15, v23

    const/16 v43, 0x4

    const v44, 0x289b7ec6

    move/from16 v38, v2

    move/from16 v39, v8

    move/from16 v40, v4

    move/from16 v41, v1

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v30

    .line 144
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v2, v11

    const/16 v43, 0xb

    const v44, -0x155ed806

    move/from16 v38, v1

    move/from16 v39, v30

    move/from16 v40, v8

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 145
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v10

    const/16 v36, 0x10

    const v37, -0x2b10cf7b

    move/from16 v32, v1

    move/from16 v33, v30

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 146
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v22

    const/16 v42, 0x17

    const v43, 0x4881d05    # 3.2000097E-36f

    move/from16 v37, v8

    move/from16 v38, v2

    move/from16 v39, v1

    move/from16 v40, v30

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v4

    .line 147
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v3

    const/16 v35, 0x4

    const v36, -0x262b2fc7

    move/from16 v31, v4

    move/from16 v32, v2

    move/from16 v33, v1

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v8

    .line 148
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v15, v7

    const/16 v36, 0xb

    const v37, -0x1924661b

    move/from16 v31, v1

    move/from16 v32, v8

    move/from16 v33, v4

    move/from16 v34, v2

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 149
    iget-object v15, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v15, v14

    const/16 v43, 0x10

    const v44, 0x1fa27cf8

    move/from16 v39, v1

    move/from16 v40, v8

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v30

    .line 150
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v29

    const/16 v36, 0x17

    const v37, -0x3b53a99b

    move/from16 v31, v4

    move/from16 v32, v30

    move/from16 v33, v1

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 153
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v11

    const/16 v42, 0x6

    const v43, -0xbd6ddbc

    move/from16 v37, v8

    move/from16 v38, v2

    move/from16 v39, v30

    move/from16 v40, v1

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v4

    .line 154
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v8, v24

    const/16 v43, 0xa

    const v44, 0x432aff97

    move/from16 v38, v1

    move/from16 v39, v4

    move/from16 v40, v2

    move/from16 v41, v30

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 155
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v8, v25

    const/16 v35, 0xf

    const v36, -0x546bdc59

    move/from16 v31, v1

    move/from16 v32, v4

    move/from16 v33, v2

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v8

    .line 156
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v11, v9

    const/16 v43, 0x15

    const v44, -0x36c5fc7

    move/from16 v38, v2

    move/from16 v39, v8

    move/from16 v40, v1

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v30

    .line 157
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v7

    const/16 v36, 0x6

    const v37, 0x655b59c3

    move/from16 v31, v4

    move/from16 v32, v30

    move/from16 v33, v8

    move/from16 v34, v1

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 158
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v4, v10

    const/16 v36, 0xa

    const v37, -0x70f3336e

    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v30

    move/from16 v34, v8

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 159
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v41, v4, v5

    const/16 v42, 0xf

    const v43, -0x100b83

    move/from16 v37, v8

    move/from16 v38, v1

    move/from16 v39, v2

    move/from16 v40, v30

    invoke-static/range {v37 .. v43}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v4

    .line 160
    iget-object v5, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v5, v21

    const/16 v35, 0x15

    const v36, -0x7a7ba22f

    move/from16 v31, v4

    move/from16 v32, v1

    move/from16 v33, v2

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v15

    .line 161
    iget-object v5, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v5, v12

    const/16 v43, 0x6

    const v44, 0x6fa87e4f

    move/from16 v38, v2

    move/from16 v39, v15

    move/from16 v40, v4

    move/from16 v41, v1

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v30

    .line 162
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v42, v2, v14

    const/16 v43, 0xa

    const v44, -0x1d31920

    move/from16 v38, v1

    move/from16 v39, v30

    move/from16 v40, v15

    move/from16 v41, v4

    invoke-static/range {v38 .. v44}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 163
    iget-object v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v2, v22

    const/16 v36, 0xf

    const v37, -0x5cfebcec

    move/from16 v32, v1

    move/from16 v33, v30

    move/from16 v34, v15

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 164
    iget-object v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v19, v4, v23

    const/16 v20, 0x15

    const v21, 0x4e0811a1    # 5.7071418E8f

    move/from16 v16, v2

    move/from16 v17, v1

    move/from16 v18, v30

    invoke-static/range {v15 .. v21}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v4

    .line 165
    iget-object v5, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v34, v5, v13

    const/16 v35, 0x6

    const v36, -0x8ac817e

    move/from16 v31, v4

    move/from16 v32, v2

    move/from16 v33, v1

    invoke-static/range {v30 .. v36}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v5

    .line 166
    iget-object v7, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v35, v7, v6

    const/16 v36, 0xa

    const v37, -0x42c50dcb

    move/from16 v31, v1

    move/from16 v32, v5

    move/from16 v33, v4

    move/from16 v34, v2

    invoke-static/range {v31 .. v37}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 167
    iget-object v6, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v20, v6, v29

    const/16 v21, 0xf

    const v22, 0x2ad7d2bb

    move/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, v4

    invoke-static/range {v16 .. v22}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 168
    iget-object v6, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget v26, v6, v3

    const/16 v27, 0x15

    const v28, -0x14792c6f

    move/from16 v22, v4

    move/from16 v23, v2

    move/from16 v24, v1

    move/from16 v25, v5

    invoke-static/range {v22 .. v28}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v3

    .line 170
    iget v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    .line 171
    iget v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    .line 172
    iget v3, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    .line 173
    iget v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    return-void
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 242
    iget-wide v2, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    long-to-int v3, v2

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 243
    iget-wide v3, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const/16 v5, 0x1d

    shr-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x4

    invoke-static {v1, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 245
    iget-wide v3, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    long-to-int v4, v3

    and-int/lit8 v3, v4, 0x3f

    const/16 v4, 0x38

    if-ge v3, v4, :cond_0

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_0
    rsub-int/lit8 v4, v3, 0x78

    .line 248
    :goto_0
    sget-object v3, Lcom/trilead/ssh2/crypto/digest/MD5;->padding:[B

    invoke-virtual {p0, v3, v2, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 249
    invoke-virtual {p0, v1, v2, v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 251
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    invoke-static {p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 252
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    invoke-static {p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    add-int/lit8 v0, p2, 0x8

    .line 253
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    invoke-static {p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    add-int/lit8 p2, p2, 0xc

    .line 254
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    invoke-static {p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 256
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/MD5;->reset()V

    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final reset()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const v0, 0x67452301

    .line 180
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    const v0, -0x10325477

    .line 181
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    const v0, -0x67452302

    .line 182
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    const v0, 0x10325476

    .line 183
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final update(B)V
    .locals 5

    .line 193
    iget-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const-wide/16 v2, 0x3f

    and-long/2addr v2, v0

    long-to-int v3, v2

    rsub-int/lit8 v2, v3, 0x40

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 195
    iput-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    .line 197
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    rsub-int/lit8 v1, v2, 0x40

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 200
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/crypto/digest/MD5;->transform([BI)V

    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2

    .line 235
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 6

    .line 205
    iget-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const-wide/16 v2, 0x3f

    and-long/2addr v2, v0

    long-to-int v3, v2

    const/16 v2, 0x40

    rsub-int/lit8 v3, v3, 0x40

    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 207
    iput-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    :goto_0
    if-lez p3, :cond_2

    if-ge p3, v3, :cond_0

    .line 213
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    sub-int/2addr v2, v3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    if-ne v3, v2, :cond_1

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/MD5;->transform([BI)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    rsub-int/lit8 v1, v3, 0x40

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/crypto/digest/MD5;->transform([BI)V

    :goto_1
    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    const/16 v3, 0x40

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
