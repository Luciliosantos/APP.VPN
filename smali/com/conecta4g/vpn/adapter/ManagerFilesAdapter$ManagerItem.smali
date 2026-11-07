.class public Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;
.super Ljava/lang/Object;
.source "ManagerFilesAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private dirName:Ljava/lang/String;

.field private dirNameSecond:Ljava/lang/String;

.field private dirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirPath:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirNameSecond:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;)I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getDirName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->compareTo(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;)I

    move-result p1

    return p1
.end method

.method public getDirName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSecond()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirNameSecond:Ljava/lang/String;

    return-object v0
.end method

.method public setDirName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirName:Ljava/lang/String;

    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirPath:Ljava/lang/String;

    return-void
.end method

.method public setNameSecond(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->dirNameSecond:Ljava/lang/String;

    return-void
.end method
