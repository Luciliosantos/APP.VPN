.class public Lcom/conecta4g/vpn/PayloadGenerator;
.super Landroid/widget/RelativeLayout;
.source "PayloadGenerator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROXY:Ljava/lang/String; = "DEFAULT_PROXY"

.field public static final DUAL_CONNECT:Ljava/lang/String; = "DUAL_CONNECT"

.field public static final FORWARD_HOST:Ljava/lang/String; = "FORWARD_HOST"

.field public static final FULL_HOST:Ljava/lang/String; = "FULL_HOST"

.field public static final INJECT_METHOD:Ljava/lang/String; = "SELECTED_INJECT_METHOD"

.field public static final KEEP_ALIVE:Ljava/lang/String; = "KEEP_ALIVE"

.field public static final METHOD:Ljava/lang/String; = "METHOD"

.field public static final ONLINE_HOST:Ljava/lang/String; = "ONLINE_HOST"

.field public static final PORT:Ljava/lang/String; = "PORT"

.field public static final PROXY:Ljava/lang/String; = "PROXY"

.field public static final QUERY_MODE:Ljava/lang/String; = "QUERY_MODE"

.field public static final REQUEST_METHOD:Ljava/lang/String; = "SELECTED_REQUEST_METHOD"

.field public static final REVERSE_PROXY:Ljava/lang/String; = "REVERSE_PROXY"

.field public static final SPLIT_MODE:Ljava/lang/String; = "SPLIT_MODE"

.field public static final URL_HOST:Ljava/lang/String; = "URL_HOST"


# instance fields
.field private context:Landroid/content/Context;

.field private dual_connect:Landroid/widget/CheckBox;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private forward_host:Landroid/widget/CheckBox;

.field private full_host:Landroid/widget/CheckBox;

.field private generate_btn:Landroid/widget/Button;

.field private inject_method:Landroid/widget/Spinner;

.field private keep_alive:Landroid/widget/CheckBox;

.field private listener:Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;

.field private online_host:Landroid/widget/CheckBox;

.field private prefs:Landroid/content/SharedPreferences;

.field private query_mode:Landroid/widget/RadioGroup;

.field private request_method:Landroid/widget/Spinner;

.field private reverse_proxy:Landroid/widget/CheckBox;

.field private split_mode:Landroid/widget/RadioGroup;

.field private url_host:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->context:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/conecta4g/vpn/PayloadGenerator;->init()V

    return-void
.end method

.method private findId(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getHost()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->url_host:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "http://%s/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHostHeader()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->url_host:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "http://%s/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->full_host:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private getInjectAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Normal"

    const-string v1, "Front"

    const-string v2, "Back"

    .line 272
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->context:Landroid/content/Context;

    const v3, 0x7f0c003f

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getPayload()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/conecta4g/vpn/PayloadGenerator;->getHostHeader()Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v2, v0, Lcom/conecta4g/vpn/PayloadGenerator;->split_mode:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const-string v3, ""

    const v4, 0x7f090120

    if-ne v2, v4, :cond_0

    const-string v2, "[split]"

    goto :goto_0

    :cond_0
    const v4, 0x7f09011d

    if-ne v2, v4, :cond_1

    const-string v2, "[delay_split]"

    goto :goto_0

    :cond_1
    const v4, 0x7f09011f

    if-ne v2, v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 183
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[crlf]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    iget-object v6, v0, Lcom/conecta4g/vpn/PayloadGenerator;->online_host:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X-Online-Host: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v3

    .line 185
    :goto_1
    iget-object v8, v0, Lcom/conecta4g/vpn/PayloadGenerator;->forward_host:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-ne v8, v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "X-Forward-Host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v3

    .line 186
    :goto_2
    iget-object v9, v0, Lcom/conecta4g/vpn/PayloadGenerator;->reverse_proxy:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-ne v9, v7, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-Forwarded-For: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v3

    :goto_3
    const-string v10, "Connection: Keep-Alive[crlf]"

    .line 188
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/conecta4g/vpn/PayloadGenerator;->request_method:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/conecta4g/vpn/PayloadGenerator;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " HTTP/1.1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 189
    iget-object v12, v0, Lcom/conecta4g/vpn/PayloadGenerator;->dual_connect:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-ne v12, v7, :cond_6

    const-string v12, "CONNECT [host_port] [protocol][crlf][crlf]"

    goto :goto_4

    :cond_6
    move-object v12, v5

    .line 190
    :goto_4
    iget-object v13, v0, Lcom/conecta4g/vpn/PayloadGenerator;->query_mode:Landroid/widget/RadioGroup;

    invoke-virtual {v13}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conecta4g/vpn/PayloadGenerator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    .line 191
    iget-object v14, v0, Lcom/conecta4g/vpn/PayloadGenerator;->inject_method:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    const-string v15, "CONNECT "

    move-object/from16 v16, v3

    const-string v3, "[host_port]"

    if-eqz v14, :cond_9

    if-eq v14, v7, :cond_8

    const/4 v7, 0x2

    if-eq v14, v7, :cond_7

    move-object/from16 v3, v16

    goto/16 :goto_5

    .line 199
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, v13, v1, v5}, Lcom/conecta4g/vpn/PayloadGenerator;->setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 196
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, v13, v1, v5}, Lcom/conecta4g/vpn/PayloadGenerator;->setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 193
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, v13, v1, v5}, Lcom/conecta4g/vpn/PayloadGenerator;->setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    return-object v3
.end method

.method private getRequestAdapter()Landroid/widget/ArrayAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CONNECT"

    const-string v1, "GET"

    const-string v2, "POST"

    const-string v3, "HEAD"

    const-string v4, "PUT"

    const-string v5, "PATCH"

    const-string v6, "PROPATCH"

    const-string v7, "DELETE"

    .line 278
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->context:Landroid/content/Context;

    const v3, 0x7f0c003f

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v1
.end method

.method private init()V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090159

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->url_host:Landroid/widget/EditText;

    const v1, 0x7f09011e

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->split_mode:Landroid/widget/RadioGroup;

    const v1, 0x7f0900ee

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->request_method:Landroid/widget/Spinner;

    const v1, 0x7f0900a8

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->inject_method:Landroid/widget/Spinner;

    const v1, 0x7f0900e8

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->query_mode:Landroid/widget/RadioGroup;

    const v1, 0x7f0900d9

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->online_host:Landroid/widget/CheckBox;

    const v1, 0x7f090088

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->forward_host:Landroid/widget/CheckBox;

    const v1, 0x7f0900ef

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->reverse_proxy:Landroid/widget/CheckBox;

    const v1, 0x7f0900b1

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->keep_alive:Landroid/widget/CheckBox;

    const v1, 0x7f090094

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->full_host:Landroid/widget/CheckBox;

    const v1, 0x7f090076

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->dual_connect:Landroid/widget/CheckBox;

    const v1, 0x7f090095

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/conecta4g/vpn/PayloadGenerator;->findId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->generate_btn:Landroid/widget/Button;

    .line 91
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->request_method:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/conecta4g/vpn/PayloadGenerator;->getRequestAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->inject_method:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/conecta4g/vpn/PayloadGenerator;->getInjectAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->query_mode:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "QUERY_MODE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->split_mode:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "SPLIT_MODE"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->url_host:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "URL_HOST"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->request_method:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "SELECTED_REQUEST_METHOD"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 97
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->inject_method:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "SELECTED_INJECT_METHOD"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->online_host:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "ONLINE_HOST"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->forward_host:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "FORWARD_HOST"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->reverse_proxy:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "REVERSE_PROXY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->keep_alive:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "KEEP_ALIVE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->full_host:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "FULL_HOST"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->dual_connect:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "DUAL_CONNECT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->split_mode:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->request_method:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 110
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->inject_method:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 111
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->query_mode:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->generate_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/PayloadGenerator;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, " "

    const-string v1, "[protocol]"

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    const-string v3, "@"

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 218
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 215
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 247
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    const v1, 0x7f0900e8

    if-eq v0, v1, :cond_1

    const v1, 0x7f09011e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const-string p2, "SPLIT_MODE"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const-string p2, "QUERY_MODE"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->url_host:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Field cannot be empty"

    .line 127
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/PayloadGenerator;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "URL/Host is empty"

    .line 129
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/PayloadGenerator;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "URL_HOST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->online_host:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "ONLINE_HOST"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->forward_host:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "FORWARD_HOST"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->reverse_proxy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "REVERSE_PROXY"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->keep_alive:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "KEEP_ALIVE"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->full_host:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "FULL_HOST"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->dual_connect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "DUAL_CONNECT"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/conecta4g/vpn/PayloadGenerator;->inject_method:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const-string v1, "SELECTED_INJECT_METHOD"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    iget-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->listener:Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;

    invoke-direct {p0}, Lcom/conecta4g/vpn/PayloadGenerator;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;->onDismiss(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p2

    const p4, 0x7f0900ee

    if-eq p2, p4, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p4, "SELECTED_REQUEST_METHOD"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    iget-object p2, p0, Lcom/conecta4g/vpn/PayloadGenerator;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "METHOD"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setDismissListener(Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/conecta4g/vpn/PayloadGenerator;->listener:Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;

    return-void
.end method
