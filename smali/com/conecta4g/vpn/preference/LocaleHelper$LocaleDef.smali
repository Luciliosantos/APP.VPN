.class public interface abstract annotation Lcom/conecta4g/vpn/preference/LocaleHelper$LocaleDef;
.super Ljava/lang/Object;
.source "LocaleHelper.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/preference/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LocaleDef"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final SUPPORTED_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "default"

    const-string v1, "pt-BR"

    const-string v2, "es"

    .line 20
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conecta4g/vpn/preference/LocaleHelper$LocaleDef;->SUPPORTED_LOCALES:[Ljava/lang/String;

    return-void
.end method
