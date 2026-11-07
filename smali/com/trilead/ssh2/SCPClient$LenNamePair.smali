.class Lcom/trilead/ssh2/SCPClient$LenNamePair;
.super Ljava/lang/Object;
.source "SCPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/SCPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LenNamePair"
.end annotation


# instance fields
.field filename:Ljava/lang/String;

.field length:J

.field final synthetic this$0:Lcom/trilead/ssh2/SCPClient;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/SCPClient;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/trilead/ssh2/SCPClient$LenNamePair;->this$0:Lcom/trilead/ssh2/SCPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
