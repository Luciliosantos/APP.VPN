.class public final Lcom/trilead/ssh2/crypto/digest/SHA1;
.super Ljava/lang/Object;
.source "SHA1.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/Digest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private currentLen:J

.field private currentPos:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    .line 19
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    .line 25
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->reset()V

    return-void
.end method

.method private final perform()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0x10

    :goto_0
    const/16 v3, 0x50

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_0

    .line 246
    iget-object v3, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    add-int/lit8 v5, v2, -0x3

    aget v5, v3, v5

    add-int/lit8 v6, v2, -0x8

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xe

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0x10

    aget v6, v3, v6

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v4, v5, 0x1f

    or-int/2addr v4, v6

    .line 247
    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget v2, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    .line 251
    iget v3, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    .line 252
    iget v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    .line 253
    iget v6, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    .line 254
    iget v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    and-int v9, v3, v5

    not-int v10, v3

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 349
    iget-object v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    const/4 v10, 0x0

    aget v10, v9, v10

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    add-int/2addr v8, v7

    shl-int/lit8 v11, v3, 0x1e

    ushr-int/lit8 v12, v3, 0x2

    or-int/2addr v11, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    and-int v13, v2, v11

    not-int v14, v2

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x1

    .line 352
    aget v13, v9, v13

    add-int/2addr v12, v13

    add-int/2addr v12, v10

    add-int/2addr v12, v6

    shl-int/lit8 v13, v2, 0x1e

    ushr-int/lit8 v14, v2, 0x2

    or-int/2addr v13, v14

    shl-int/lit8 v14, v12, 0x5

    ushr-int/lit8 v15, v12, 0x1b

    or-int/2addr v14, v15

    and-int v15, v8, v13

    not-int v4, v8

    and-int/2addr v4, v11

    or-int/2addr v4, v15

    add-int/2addr v14, v4

    const/4 v4, 0x2

    .line 355
    aget v15, v9, v4

    add-int/2addr v14, v15

    add-int/2addr v14, v10

    add-int/2addr v14, v5

    shl-int/lit8 v15, v8, 0x1e

    ushr-int/2addr v8, v4

    or-int/2addr v8, v15

    shl-int/lit8 v15, v14, 0x5

    ushr-int/lit8 v16, v14, 0x1b

    or-int v15, v15, v16

    and-int v16, v12, v8

    not-int v1, v12

    and-int/2addr v1, v13

    or-int v1, v16, v1

    add-int/2addr v15, v1

    const/4 v1, 0x3

    .line 358
    aget v1, v9, v1

    add-int/2addr v15, v1

    add-int/2addr v15, v10

    add-int/2addr v11, v15

    shl-int/lit8 v1, v12, 0x1e

    ushr-int/2addr v12, v4

    or-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v15, v11, 0x1b

    or-int/2addr v12, v15

    and-int v15, v14, v1

    not-int v4, v14

    and-int/2addr v4, v8

    or-int/2addr v4, v15

    add-int/2addr v12, v4

    const/4 v4, 0x4

    .line 361
    aget v4, v9, v4

    add-int/2addr v12, v4

    add-int/2addr v12, v10

    add-int/2addr v13, v12

    shl-int/lit8 v4, v14, 0x1e

    const/4 v12, 0x2

    ushr-int/2addr v14, v12

    or-int/2addr v4, v14

    shl-int/lit8 v12, v13, 0x5

    ushr-int/lit8 v14, v13, 0x1b

    or-int/2addr v12, v14

    and-int v14, v11, v4

    not-int v15, v11

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/4 v14, 0x5

    .line 364
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v10

    add-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    and-int v14, v13, v11

    not-int v15, v13

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/4 v14, 0x6

    .line 367
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v10

    add-int/2addr v1, v12

    shl-int/lit8 v12, v13, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v13, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v12

    not-int v15, v8

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x7

    .line 370
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v4, v13

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v8

    not-int v15, v1

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x8

    .line 373
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x9

    .line 376
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v11, v4

    not-int v15, v11

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xa

    .line 379
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    shl-int/lit8 v13, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v11

    not-int v15, v12

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xb

    .line 382
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v1, v13

    shl-int/lit8 v13, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v12

    not-int v15, v8

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xc

    .line 385
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v4, v13

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v8

    not-int v15, v1

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xd

    .line 388
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xe

    .line 391
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v11, v4

    not-int v15, v11

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xf

    .line 394
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    shl-int/lit8 v13, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v11

    not-int v15, v12

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x10

    .line 397
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v1, v13

    shl-int/lit8 v13, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v12

    not-int v15, v8

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x11

    .line 400
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v4, v13

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v8

    not-int v15, v1

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x12

    .line 403
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x13

    .line 406
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v12, v13

    shl-int/lit8 v10, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v10

    shl-int/lit8 v10, v12, 0x5

    ushr-int/lit8 v13, v12, 0x1b

    or-int/2addr v10, v13

    xor-int v13, v11, v4

    xor-int/2addr v13, v1

    add-int/2addr v10, v13

    const/16 v13, 0x14

    .line 409
    aget v13, v9, v13

    add-int/2addr v10, v13

    const v13, 0x6ed9eba1

    add-int/2addr v10, v13

    add-int/2addr v8, v10

    shl-int/lit8 v10, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v10, v11

    shl-int/lit8 v11, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v11, v14

    xor-int v14, v12, v10

    xor-int/2addr v14, v4

    add-int/2addr v11, v14

    const/16 v14, 0x15

    .line 412
    aget v14, v9, v14

    add-int/2addr v11, v14

    add-int/2addr v11, v13

    add-int/2addr v1, v11

    shl-int/lit8 v11, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x16

    .line 415
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x17

    .line 418
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x18

    .line 421
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x19

    .line 424
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x1a

    .line 427
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x1b

    .line 430
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x1c

    .line 433
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x1d

    .line 436
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x1e

    .line 439
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x1f

    .line 442
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x20

    .line 445
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x21

    .line 448
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x22

    .line 451
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x23

    .line 454
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x24

    .line 457
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x25

    .line 460
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x26

    .line 463
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x27

    .line 466
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    and-int v13, v10, v4

    and-int v14, v10, v1

    or-int/2addr v13, v14

    and-int v14, v4, v1

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x28

    .line 469
    aget v13, v9, v13

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    and-int v14, v11, v10

    and-int v15, v11, v4

    or-int/2addr v14, v15

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x29

    .line 472
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    and-int v14, v8, v11

    and-int v15, v8, v10

    or-int/2addr v14, v15

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2a

    .line 475
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    and-int v14, v1, v8

    and-int v15, v1, v11

    or-int/2addr v14, v15

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2b

    .line 478
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    and-int v14, v4, v1

    and-int v15, v4, v8

    or-int/2addr v14, v15

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2c

    .line 481
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    and-int v14, v10, v4

    and-int v15, v10, v1

    or-int/2addr v14, v15

    and-int v15, v4, v1

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2d

    .line 484
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    and-int v14, v11, v10

    and-int v15, v11, v4

    or-int/2addr v14, v15

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2e

    .line 487
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    and-int v14, v8, v11

    and-int v15, v8, v10

    or-int/2addr v14, v15

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2f

    .line 490
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    and-int v14, v1, v8

    and-int v15, v1, v11

    or-int/2addr v14, v15

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x30

    .line 493
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    and-int v14, v4, v1

    and-int v15, v4, v8

    or-int/2addr v14, v15

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x31

    .line 496
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    and-int v14, v10, v4

    and-int v15, v10, v1

    or-int/2addr v14, v15

    and-int v15, v4, v1

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x32

    .line 499
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    and-int v14, v11, v10

    and-int v15, v11, v4

    or-int/2addr v14, v15

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x33

    .line 502
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    and-int v14, v8, v11

    and-int v15, v8, v10

    or-int/2addr v14, v15

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x34

    .line 505
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    and-int v14, v1, v8

    and-int v15, v1, v11

    or-int/2addr v14, v15

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x35

    .line 508
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    and-int v14, v4, v1

    and-int v15, v4, v8

    or-int/2addr v14, v15

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x36

    .line 511
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    add-int/2addr v8, v12

    and-int v12, v10, v4

    and-int v14, v10, v1

    or-int/2addr v12, v14

    and-int v14, v4, v1

    or-int/2addr v12, v14

    add-int/2addr v8, v12

    const/16 v12, 0x37

    .line 514
    aget v12, v9, v12

    add-int/2addr v8, v12

    add-int/2addr v8, v13

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    and-int v14, v11, v10

    and-int v15, v11, v4

    or-int/2addr v14, v15

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x38

    .line 517
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    and-int v14, v8, v11

    and-int v15, v8, v10

    or-int/2addr v14, v15

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x39

    .line 520
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    and-int v14, v1, v8

    and-int v15, v1, v11

    or-int/2addr v14, v15

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x3a

    .line 523
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    and-int v14, v4, v1

    and-int v15, v4, v8

    or-int/2addr v14, v15

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x3b

    .line 526
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x3c

    .line 529
    aget v13, v9, v13

    add-int/2addr v12, v13

    const v13, -0x359d3e2a    # -3715189.5f

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x3d

    .line 532
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x3e

    .line 535
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x3f

    .line 538
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x40

    .line 541
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x41

    .line 544
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x42

    .line 547
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x43

    .line 550
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x44

    .line 553
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x45

    .line 556
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x46

    .line 559
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x47

    .line 562
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x48

    .line 565
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x49

    .line 568
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x4a

    .line 571
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x4b

    .line 574
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x4c

    .line 577
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x4d

    .line 580
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x4e

    .line 583
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x4f

    .line 586
    aget v9, v9, v14

    add-int/2addr v12, v9

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v9, v4, 0x1e

    const/4 v12, 0x2

    ushr-int/2addr v4, v12

    or-int/2addr v4, v9

    add-int/2addr v2, v11

    .line 589
    iput v2, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    add-int/2addr v3, v10

    .line 590
    iput v3, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    add-int/2addr v5, v4

    .line 591
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    add-int/2addr v6, v1

    .line 592
    iput v6, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    add-int/2addr v7, v8

    .line 593
    iput v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    return-void
.end method

.method private final putInt([BII)V
    .locals 2

    shr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    .line 188
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 189
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 190
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p3, p3

    .line 191
    aput-byte p3, p1, p2

    return-void
.end method

.method private static final toHexString([B)Ljava/lang/String;
    .locals 4

    .line 602
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 603
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 605
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 606
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 7

    .line 203
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 204
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    or-int/lit16 v3, v3, 0x80

    and-int/lit8 v4, v0, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    aput v3, v2, v1

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 206
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    const/16 v1, 0xf

    const/4 v3, 0x0

    const/16 v4, 0x40

    if-ne v0, v4, :cond_0

    .line 210
    iput v3, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 211
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    goto :goto_0

    :cond_0
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1

    .line 215
    iput v3, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 216
    aput v3, v2, v1

    .line 217
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 225
    :cond_1
    :goto_0
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v0, v0, 0x2

    :goto_1
    const/16 v2, 0xe

    if-ge v0, v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget-wide v3, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v6, v5

    aput v6, v0, v2

    long-to-int v2, v3

    .line 229
    aput v2, v0, v1

    .line 231
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 233
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    invoke-direct {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 234
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x8

    .line 235
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0xc

    .line 236
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 p2, p2, 0x10

    .line 237
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    invoke-direct {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    .line 239
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->reset()V

    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final reset()V
    .locals 2

    const v0, 0x67452301

    .line 35
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    const v0, -0x10325477

    .line 36
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    const v0, -0x67452302

    .line 37
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    const v0, 0x10325476

    .line 38
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    const v0, -0x3c2d1e10

    .line 39
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    return-void
.end method

.method public final update(B)V
    .locals 5

    .line 173
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 174
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v3

    aput p1, v2, v1

    .line 176
    iget-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-int/lit8 v0, v0, 0x1

    .line 177
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    const/16 p1, 0x40

    if-ne v0, p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-lt v1, v4, :cond_a

    .line 57
    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    and-int/lit8 v11, v9, 0x3

    if-eqz v11, :cond_4

    const/4 v14, 0x3

    if-eq v11, v8, :cond_3

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1

    if-eq v11, v14, :cond_0

    move/from16 v15, p2

    goto/16 :goto_0

    .line 95
    :cond_0
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v14, v11, v10

    shl-int/2addr v14, v7

    add-int/lit8 v15, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v12, v14

    aput v12, v11, v10

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v9, v8

    .line 97
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 98
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v6, :cond_6

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 102
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    goto/16 :goto_0

    .line 84
    :cond_1
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v13, p2, 0x1

    aget-byte v14, p1, p2

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    add-int/lit8 v16, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v9, v15

    .line 86
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 87
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v12, 0x10

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v6, :cond_2

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 91
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_2
    move/from16 v15, v16

    goto :goto_0

    .line 73
    :cond_3
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, p2, 0x1

    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    or-int/2addr v13, v15

    add-int/lit8 v15, v16, 0x1

    aget-byte v8, p1, v16

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v13

    or-int/2addr v8, v12

    aput v8, v11, v10

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v9, v14

    .line 75
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 76
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v12, 0x18

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v6, :cond_6

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 80
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    goto :goto_0

    .line 62
    :cond_4
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    add-int/lit8 v11, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v8, v10

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v9, v4

    .line 64
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 65
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v14, 0x20

    add-long/2addr v10, v14

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v6, :cond_5

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 69
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_5
    move v15, v13

    :cond_6
    :goto_0
    if-lt v1, v7, :cond_9

    .line 111
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v15, 0x1

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v8, v10

    add-int/2addr v9, v4

    .line 113
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    if-ne v9, v6, :cond_7

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 118
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 121
    :cond_7
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v13, 0x1

    aget-byte v12, p1, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v8, v10

    add-int/2addr v9, v4

    .line 124
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    if-ne v9, v6, :cond_8

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 129
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 132
    :cond_8
    iget-wide v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v10, 0x40

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_9
    :goto_1
    if-gez v1, :cond_b

    .line 138
    iget-object v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v15, 0x1

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v8, v10

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v9, v4

    .line 141
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 142
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v12, 0x20

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v6, :cond_9

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 146
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    goto :goto_1

    :cond_a
    move/from16 v15, p2

    :cond_b
    :goto_2
    if-lez v1, :cond_d

    .line 156
    iget v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v8, v4, 0x2

    .line 157
    iget-object v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v10, v9, v8

    shl-int/2addr v10, v7

    add-int/lit8 v11, v15, 0x1

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    aput v10, v9, v8

    .line 159
    iget-wide v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v8, v2

    iput-wide v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 160
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    if-ne v4, v6, :cond_c

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 165
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_c
    add-int/lit8 v1, v1, -0x1

    move v15, v11

    goto :goto_2

    :cond_d
    return-void
.end method
