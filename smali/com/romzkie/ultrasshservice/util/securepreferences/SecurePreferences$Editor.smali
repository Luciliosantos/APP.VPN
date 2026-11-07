.class public final Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field protected mProxyEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;


# direct methods
.method public constructor <init>(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$000(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->clear()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 212
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public bridge synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->putFloat(Ljava/lang/String;F)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 204
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 188
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;J)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 167
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public bridge synthetic putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v2, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->mProxyEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;->this$0:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-static {v1, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
