.class Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnownHostsEntry"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final key:Ljava/security/PublicKey;

.field private final patterns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/trilead/ssh2/KnownHosts;


# direct methods
.method private constructor <init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->this$0:Lcom/trilead/ssh2/KnownHosts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/security/PublicKey;

    .line 70
    iput-object p4, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->algorithm:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/trilead/ssh2/KnownHosts$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)[Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)Ljava/security/PublicKey;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/security/PublicKey;

    return-object p0
.end method

.method static synthetic access$300(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->algorithm:Ljava/lang/String;

    return-object p0
.end method
