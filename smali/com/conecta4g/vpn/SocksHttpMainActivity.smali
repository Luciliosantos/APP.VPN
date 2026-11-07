.class public Lcom/conecta4g/vpn/SocksHttpMainActivity;
.super Lcom/conecta4g/vpn/activities/BaseActivity;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;
.implements Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;,
        Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;,
        Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;
    }
.end annotation


# static fields
.field public static final OPEN_LOGS:Ljava/lang/String; = "com.conecta4g.vpn:openLogs"

.field private static final TAG:Ljava/lang/String; = "SocksHttpMainActivity"

.field private static final UPDATE_VIEWS:Ljava/lang/String; = "MainUpdate"

.field private static final tabTitle:[Ljava/lang/String;


# instance fields
.field private Vencimento:Landroid/widget/TextView;

.field private config:Lcom/conecta4g/vpn/util/ConfigUtil;

.field private configMsgLayout:Landroid/widget/LinearLayout;

.field private configMsgText:Landroid/widget/TextView;

.field contador:I

.field countryNames:[Ljava/lang/String;

.field private customPayloadSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private dias_check:Landroid/widget/TextView;

.field private idAtual:I

.field private inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputPwShowPass:Landroid/widget/ImageButton;

.field private inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

.field private isMostrarSenha:Z

.field private logList:Landroidx/recyclerview/widget/RecyclerView;

.field private loginLayout:Landroid/widget/LinearLayout;

.field private mActivityReceiver:Landroid/content/BroadcastReceiver;

.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

.field private mHandler:Landroid/os/Handler;

.field private mHandler2:Landroid/os/Handler;

.field private mLogAdapter:Lcom/conecta4g/vpn/adapter/LogsAdapter;

.field private mRunnable:Ljava/lang/Runnable;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private makefat:[Ljava/lang/String;

.field private metodoConexaoRadio:Landroid/widget/RadioGroup;

.field private pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

.field private payloadAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

.field private payloadEdit:Lcom/google/android/material/textfield/TextInputEditText;

.field private payloadLayout:Landroid/widget/LinearLayout;

.field private payloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private payloadSpinner:Landroid/widget/Spinner;

.field private proxyInputLayout:Landroid/widget/LinearLayout;

.field private proxyText:Landroid/widget/TextView;

.field private reloadIU:Landroid/widget/ImageView;

.field private serverAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

.field private serverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private serverSpinner:Landroid/widget/Spinner;

.field private sslEdit:Lcom/google/android/material/textfield/TextInputEditText;

.field private ssl_layout:Landroid/widget/LinearLayout;

.field private starterButton:Landroid/widget/Button;

.field private status:Landroid/widget/TextView;

.field private tabs:Lcom/google/android/material/tabs/TabLayout;

.field private toolbar_main:Landroidx/appcompat/widget/Toolbar;

.field private typenetwork:Z

.field private udpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private user_limite:Landroid/widget/TextView;

.field private vp:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "INICIO"

    const-string v1, "REGISTRO"

    .line 110
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->tabTitle:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/conecta4g/vpn/activities/BaseActivity;-><init>()V

    const-string v1, "Custom Payload"

    const-string v2, "Custom SNI"

    .line 118
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->countryNames:[Ljava/lang/String;

    .line 129
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mHandler2:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 835
    iput v1, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->contador:I

    .line 1090
    iput-boolean v1, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->isMostrarSenha:Z

    .line 1259
    new-instance v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$9;

    invoke-direct {v2, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$9;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    iput-object v2, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mActivityReceiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x34

    new-array v2, v2, [Ljava/lang/String;

    .line 1644
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x1b

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x20

    new-array v5, v3, [B

    fill-array-data v5, :array_1

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x1

    aput-object v1, v2, v5

    new-instance v1, Ljava/lang/String;

    new-array v5, v4, [B

    fill-array-data v5, :array_2

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x2

    aput-object v1, v2, v5

    new-instance v1, Ljava/lang/String;

    const/16 v5, 0x15

    new-array v6, v5, [B

    fill-array-data v6, :array_3

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x3

    aput-object v1, v2, v6

    new-instance v1, Ljava/lang/String;

    const/16 v6, 0x10

    new-array v7, v6, [B

    fill-array-data v7, :array_4

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    const/4 v7, 0x4

    aput-object v1, v2, v7

    new-instance v1, Ljava/lang/String;

    const/16 v7, 0x19

    new-array v8, v7, [B

    fill-array-data v8, :array_5

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    const/4 v8, 0x5

    aput-object v1, v2, v8

    new-instance v1, Ljava/lang/String;

    new-array v8, v7, [B

    fill-array-data v8, :array_6

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    const/4 v8, 0x6

    aput-object v1, v2, v8

    new-instance v1, Ljava/lang/String;

    const/16 v8, 0x18

    new-array v9, v8, [B

    fill-array-data v9, :array_7

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    const/4 v9, 0x7

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/String;

    const/16 v10, 0x13

    new-array v11, v10, [B

    fill-array-data v11, :array_8

    invoke-direct {v1, v11}, Ljava/lang/String;-><init>([B)V

    const/16 v11, 0x8

    aput-object v1, v2, v11

    new-instance v1, Ljava/lang/String;

    const/16 v11, 0x17

    new-array v12, v11, [B

    fill-array-data v12, :array_9

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>([B)V

    const/16 v12, 0x9

    aput-object v1, v2, v12

    new-instance v1, Ljava/lang/String;

    new-array v12, v5, [B

    fill-array-data v12, :array_a

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>([B)V

    const/16 v12, 0xa

    aput-object v1, v2, v12

    new-instance v1, Ljava/lang/String;

    new-array v9, v9, [B

    fill-array-data v9, :array_b

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0xb

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/String;

    new-array v9, v9, [B

    fill-array-data v9, :array_c

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0xc

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x1e

    new-array v13, v12, [B

    fill-array-data v13, :array_d

    invoke-direct {v1, v13}, Ljava/lang/String;-><init>([B)V

    const/16 v13, 0xd

    aput-object v1, v2, v13

    new-instance v1, Ljava/lang/String;

    const/16 v14, 0x1d

    new-array v15, v14, [B

    fill-array-data v15, :array_e

    invoke-direct {v1, v15}, Ljava/lang/String;-><init>([B)V

    const/16 v15, 0xe

    aput-object v1, v2, v15

    new-instance v1, Ljava/lang/String;

    const/16 v15, 0x22

    new-array v9, v15, [B

    fill-array-data v9, :array_f

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0xf

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/String;

    new-array v9, v5, [B

    fill-array-data v9, :array_10

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v6

    new-instance v1, Ljava/lang/String;

    new-array v9, v8, [B

    fill-array-data v9, :array_11

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0x11

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/String;

    new-array v9, v13, [B

    fill-array-data v9, :array_12

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0x12

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/String;

    new-array v6, v7, [B

    fill-array-data v6, :array_13

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v10

    new-instance v1, Ljava/lang/String;

    new-array v6, v7, [B

    fill-array-data v6, :array_14

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    const/16 v6, 0x14

    aput-object v1, v2, v6

    new-instance v1, Ljava/lang/String;

    const/16 v15, 0x1c

    new-array v3, v15, [B

    fill-array-data v3, :array_15

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v5

    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x27

    new-array v5, v3, [B

    fill-array-data v5, :array_16

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    const/16 v5, 0x16

    aput-object v1, v2, v5

    new-instance v1, Ljava/lang/String;

    new-array v3, v15, [B

    fill-array-data v3, :array_17

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v11

    new-instance v1, Ljava/lang/String;

    new-array v3, v7, [B

    fill-array-data v3, :array_18

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v8

    new-instance v1, Ljava/lang/String;

    new-array v3, v11, [B

    fill-array-data v3, :array_19

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v7

    new-instance v1, Ljava/lang/String;

    new-array v3, v11, [B

    fill-array-data v3, :array_1a

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x1a

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v8, v13, [B

    fill-array-data v8, :array_1b

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v4

    new-instance v1, Ljava/lang/String;

    new-array v8, v9, [B

    fill-array-data v8, :array_1c

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v15

    new-instance v1, Ljava/lang/String;

    new-array v3, v3, [B

    fill-array-data v3, :array_1d

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v14

    new-instance v1, Ljava/lang/String;

    new-array v3, v10, [B

    fill-array-data v3, :array_1e

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v12

    new-instance v1, Ljava/lang/String;

    new-array v3, v6, [B

    fill-array-data v3, :array_1f

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x1f

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v6, [B

    fill-array-data v3, :array_20

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x20

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v15, [B

    fill-array-data v3, :array_21

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x21

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v14, [B

    fill-array-data v3, :array_22

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x22

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v5, [B

    fill-array-data v3, :array_23

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x23

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_24

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x24

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v11, [B

    fill-array-data v3, :array_25

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x25

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v4, [B

    fill-array-data v3, :array_26

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x26

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v11, [B

    fill-array-data v3, :array_27

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x27

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v6, [B

    fill-array-data v3, :array_28

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x28

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v5, [B

    fill-array-data v3, :array_29

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x29

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v6, [B

    fill-array-data v3, :array_2a

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x2a

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v4, [B

    fill-array-data v3, :array_2b

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x2b

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x15

    new-array v4, v3, [B

    fill-array-data v4, :array_2c

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x2c

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v11, [B

    fill-array-data v3, :array_2d

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x2d

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_2e

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x2e

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v11, [B

    fill-array-data v3, :array_2f

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x2f

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v7, [B

    fill-array-data v3, :array_30

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x30

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v5, [B

    fill-array-data v3, :array_31

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x31

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_32

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x32

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/String;

    new-array v3, v9, [B

    fill-array-data v3, :array_33

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0x33

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->makefat:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x78t
        0x75t
        0x6et
        0x6ct
        0x65t
        0x69t
        0x2et
        0x64t
        0x6ft
        0x77t
        0x6et
        0x6ct
        0x6ft
        0x61t
        0x64t
        0x70t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x76t
        0x69t
        0x6ct
        0x6ct
        0x61t
        0x6ct
        0x69t
        0x74t
        0x65t
        0x2et
        0x72t
        0x6ft
        0x6dt
        0x72t
        0x65t
        0x76t
        0x69t
        0x65t
        0x77t
        0x65t
        0x72t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_2
    .array-data 1
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x76t
        0x69t
        0x6ct
        0x6ct
        0x61t
        0x2et
        0x72t
        0x6ft
        0x6dt
        0x72t
        0x65t
        0x76t
        0x69t
        0x77t
        0x65t
        0x72t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_3
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x65t
        0x70t
        0x69t
        0x63t
        0x2et
        0x61t
        0x70t
        0x70t
        0x2et
        0x69t
        0x54t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x75t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x77t
        0x65t
        0x62t
    .end array-data

    :array_5
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x70t
        0x61t
        0x6ft
        0x6ct
        0x6ft
        0x64t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x73t
        0x65t
        0x61t
        0x72t
        0x63t
        0x68t
        0x32t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x62t
        0x69t
        0x74t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x2et
        0x70t
        0x72t
        0x6ft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x6ft
        0x62t
        0x69t
        0x6ct
        0x69t
        0x74t
        0x79t
        0x66t
        0x6ct
        0x6ft
        0x77t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    :array_8
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x75t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
    .end array-data

    :array_9
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x75t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x2et
        0x70t
        0x72t
        0x6ft
    .end array-data

    :array_a
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x62t
        0x69t
        0x74t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    :array_c
    .array-data 1
        0x6dt
        0x65t
        0x67t
        0x61t
        0x62t
        0x79t
        0x74t
        0x65t
        0x2et
        0x64t
        0x6dt
    .end array-data

    :array_d
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x66t
        0x67t
        0x72t
        0x6ft
        0x75t
        0x70t
        0x74t
        0x65t
        0x63t
        0x68t
        0x2et
        0x6bt
        0x69t
        0x63t
        0x6bt
        0x61t
        0x73t
        0x73t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x73t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x69t
        0x6et
        0x2et
        0x67t
        0x6ft
        0x70t
        0x61t
        0x6ct
        0x61t
        0x6bt
        0x72t
        0x69t
        0x73t
        0x68t
        0x6et
        0x61t
        0x72t
        0x65t
        0x64t
        0x64t
        0x79t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6at
        0x72t
        0x75t
        0x6dt
        0x6dt
        0x79t
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x72t
        0x6ft
        0x6ft
        0x74t
        0x62t
        0x72t
        0x6ft
        0x77t
        0x73t
        0x65t
        0x72t
        0x2et
        0x63t
        0x6ct
        0x61t
        0x73t
        0x73t
        0x69t
        0x63t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x62t
        0x69t
        0x74t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x68t
        0x75t
        0x2et
        0x74t
        0x61t
        0x67t
        0x73t
        0x6ft
        0x66t
        0x74t
        0x2et
        0x74t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x6ct
        0x69t
        0x74t
        0x65t
    .end array-data

    :array_12
    .array-data 1
        0x63t
        0x6ft
        0x2et
        0x77t
        0x65t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x69t
        0x6et
        0x68t
        0x75t
        0x69t
        0x2et
        0x6et
        0x65t
        0x74t
        0x77t
        0x6ft
        0x72t
        0x6bt
        0x63t
        0x61t
        0x70t
        0x74t
        0x75t
        0x72t
        0x65t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x61t
        0x70t
        0x70t
        0x2et
        0x67t
        0x72t
        0x65t
        0x79t
        0x73t
        0x68t
        0x69t
        0x72t
        0x74t
        0x73t
        0x2et
        0x73t
        0x73t
        0x6ct
        0x63t
        0x61t
        0x70t
        0x74t
        0x75t
        0x72t
        0x65t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x70t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x73t
        0x6et
        0x69t
        0x66t
        0x66t
        0x65t
        0x72t
        0x2et
        0x66t
        0x72t
        0x74t
        0x70t
        0x61t
        0x72t
        0x6ct
        0x61t
        0x6bt
    .end array-data

    :array_16
    .array-data 1
        0x6at
        0x70t
        0x2et
        0x63t
        0x6ft
        0x2et
        0x74t
        0x61t
        0x6ft
        0x73t
        0x6ft
        0x66t
        0x74t
        0x77t
        0x61t
        0x72t
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x70t
        0x61t
        0x63t
        0x6bt
        0x65t
        0x74t
        0x63t
        0x61t
        0x70t
        0x74t
        0x75t
        0x72t
        0x65t
    .end array-data

    :array_17
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x65t
        0x6dt
        0x61t
        0x6et
        0x75t
        0x65t
        0x6ct
        0x65t
        0x66t
        0x2et
        0x72t
        0x65t
        0x6dt
        0x6ft
        0x74t
        0x65t
        0x5ft
        0x63t
        0x61t
        0x70t
        0x74t
        0x75t
        0x72t
        0x65t
    .end array-data

    :array_18
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x63t
        0x6ft
        0x64t
        0x65t
        0x2et
        0x6et
        0x65t
        0x74t
        0x77t
        0x6ft
        0x72t
        0x6bt
        0x6ct
        0x6ft
        0x67t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x61t
        0x72t
        0x75t
        0x74t
        0x69t
        0x67t
        0x72t
        0x6ft
        0x75t
        0x70t
        0x2et
        0x64t
        0x6ft
        0x77t
        0x6et
        0x74t
        0x6ft
        0x72t
    .end array-data

    :array_1a
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x69t
        0x6et
        0x68t
        0x75t
        0x69t
        0x2et
        0x77t
        0x69t
        0x66t
        0x69t
        0x61t
        0x6et
        0x61t
        0x6ct
        0x79t
        0x7at
        0x65t
        0x72t
    .end array-data

    :array_1b
    .array-data 1
        0x74t
        0x76t
        0x2et
        0x62t
        0x69t
        0x74t
        0x78t
        0x2et
        0x6dt
        0x65t
        0x64t
        0x69t
        0x61t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x44t
        0x72t
        0x6ft
        0x69t
        0x44t
        0x6ft
        0x77t
        0x6et
        0x6ct
        0x6ft
        0x61t
        0x64t
        0x65t
        0x72t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x62t
        0x69t
        0x74t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x64t
        0x6ft
        0x77t
        0x6et
        0x6ct
        0x6ft
        0x61t
        0x64t
        0x65t
        0x72t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x6ft
        0x72t
        0x67t
        0x2et
        0x74t
        0x72t
        0x61t
        0x6et
        0x73t
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x6ct
        0x69t
        0x74t
        0x65t
    .end array-data

    :array_1f
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x64t
        0x65t
        0x6ct
        0x70t
        0x68t
        0x69t
        0x63t
        0x6ft
        0x64t
        0x65t
        0x72t
        0x2et
        0x66t
        0x6ct
        0x75t
        0x64t
    .end array-data

    :array_20
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x6ft
        0x62t
        0x69t
        0x6ct
        0x69t
        0x74t
        0x79t
        0x66t
        0x6ct
        0x6ft
        0x77t
        0x2et
        0x74t
        0x76t
        0x70t
    .end array-data

    :array_21
    .array-data 1
        0x68t
        0x75t
        0x2et
        0x62t
        0x75t
        0x74t
        0x65t
        0x2et
        0x64t
        0x61t
        0x61t
        0x69t
        0x2et
        0x61t
        0x6dt
        0x6ft
        0x72t
        0x67t
        0x2et
        0x64t
        0x72t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    :array_22
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x6ft
        0x62t
        0x69t
        0x6ct
        0x69t
        0x74t
        0x79t
        0x66t
        0x6ct
        0x6ft
        0x77t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x70t
        0x72t
        0x6ft
        0x66t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x62t
        0x72t
        0x75t
        0x74t
        0x65t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x6ft
        0x6ct
        0x69t
        0x74t
        0x65t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6et
        0x65t
        0x62t
        0x75t
        0x6ct
        0x61t
        0x2et
        0x73t
        0x77t
        0x69t
        0x66t
        0x74t
    .end array-data

    :array_25
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x61t
        0x72t
        0x75t
        0x74t
        0x69t
        0x67t
        0x72t
        0x6ft
        0x75t
        0x70t
        0x2et
        0x64t
        0x6ft
        0x77t
        0x6et
        0x74t
        0x6ft
        0x72t
    .end array-data

    :array_26
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x41t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x41t
        0x2et
        0x44t
        0x72t
        0x6ft
        0x69t
        0x44t
        0x6ft
        0x77t
        0x6et
        0x6ct
        0x6ft
        0x61t
        0x64t
        0x65t
        0x72t
    .end array-data

    :array_27
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x69t
        0x6et
        0x64t
        0x72t
        0x69t
        0x73t
        0x2et
        0x79t
        0x69t
        0x66t
        0x79t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x73t
    .end array-data

    :array_28
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x64t
        0x65t
        0x6ct
        0x70t
        0x68t
        0x69t
        0x63t
        0x6ft
        0x64t
        0x65t
        0x72t
        0x2et
        0x66t
        0x6ct
        0x75t
        0x64t
    .end array-data

    :array_29
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6ft
        0x69t
        0x64t
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x62t
        0x69t
        0x74t
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x64t
        0x77t
        0x6ct
        0x65t
        0x65t
        0x65t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x73t
        0x65t
        0x61t
        0x72t
        0x63t
        0x68t
    .end array-data

    :array_2b
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x76t
        0x75t
        0x7at
        0x65t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
        0x2et
        0x64t
        0x6ft
        0x77t
        0x6et
        0x6ct
        0x6ft
        0x61t
        0x64t
        0x65t
        0x72t
    .end array-data

    :array_2c
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x75t
        0x6ft
        0x73t
        0x68t
        0x69t
        0x2et
        0x68t
        0x74t
        0x74t
        0x70t
        0x63t
        0x61t
        0x6et
        0x61t
        0x72t
        0x79t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x61t
        0x62t
        0x6ft
        0x72t
        0x64t
        0x65t
        0x6dt
        0x6bt
        0x6ft
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x6et
        0x61t
        0x64t
        0x6ft
    .end array-data

    :array_2e
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x66t
        0x72t
        0x6ft
        0x73t
        0x74t
        0x77t
        0x69t
        0x72t
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x76t
        0x75t
        0x7at
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x72t
        0x65t
        0x6dt
        0x6ft
        0x74t
        0x65t
    .end array-data

    :array_30
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x64t
        0x65t
        0x6ct
        0x70t
        0x68t
        0x69t
        0x63t
        0x6ft
        0x64t
        0x65t
        0x72t
        0x2et
        0x66t
        0x6ct
        0x75t
        0x64t
        0x2et
        0x70t
        0x61t
        0x69t
        0x64t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x74t
        0x65t
        0x65t
        0x6ft
        0x6et
        0x73t
        0x6ft
        0x66t
        0x74t
        0x2et
        0x7at
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x6dt
        0x65t
        0x67t
        0x61t
        0x62t
        0x79t
        0x74t
        0x65t
        0x2et
        0x74t
        0x64t
        0x6dt
    .end array-data

    :array_33
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x69t
        0x2et
        0x74t
        0x6ft
        0x72t
        0x72t
        0x65t
        0x6et
        0x74t
    .end array-data
.end method

.method private AvisoexNotif(ILjava/lang/String;)V
    .locals 5

    const-string v0, "notification"

    .line 1598
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1599
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1600
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sockshttpmainactivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->createNotification(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_0
    const-string v2, "Aten\u00e7\u00e3o"

    .line 1605
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " para o termino da sua internet."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1606
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1607
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0800a3

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, -0x1

    .line 1608
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1609
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1610
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x7f08005a

    .line 1611
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/16 p1, 0x1023

    .line 1612
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private ExpiradoNotif()V
    .locals 5

    const-string v0, "notification"

    .line 1617
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1618
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1619
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 1620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sockshttpmainactivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->createNotification(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_0
    const-string v2, "Aten\u00e7\u00e3o"

    .line 1624
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "Sua internet est\u00e1 vencida, renove o acesso com seu vendedor."

    .line 1625
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1626
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 1627
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1628
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1629
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f08005a

    .line 1630
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/16 v2, 0x1022

    .line 1631
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private LimiteNotif()V
    .locals 5

    const-string v0, "notification"

    .line 1912
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1913
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1914
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 1915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sockshttpmainactivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->createNotification(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 1919
    :cond_0
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const-string v3, "N\u00e3o permitidos conex\u00f5es multiplas por login, usuarios que compartilham seus dados de login poderam perder acesso por violar nossos termos de uso."

    .line 1920
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    const-string v3, "SEU USUARIO JA EST\u00c1 EM USO!"

    .line 1921
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    const-string v4, "ADM"

    .line 1922
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 1919
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1923
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "N\u00e3o permitidos conex\u00f5es multiplas por login. Usuarios que compartilham seus dados de login poderam perder acesso por violar nossos termos de uso."

    .line 1924
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1925
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 1926
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1927
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f08005c

    .line 1928
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/16 v2, 0x1024

    .line 1929
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "vibrator"

    .line 1930
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x7d0

    .line 1932
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private PayloadGenerator()V
    .locals 2

    .line 1328
    new-instance v0, Lcom/conecta4g/vpn/PayloadGenerator;

    invoke-direct {v0, p0}, Lcom/conecta4g/vpn/PayloadGenerator;-><init>(Landroid/content/Context;)V

    .line 1329
    invoke-virtual {v0, p0}, Lcom/conecta4g/vpn/PayloadGenerator;->setDismissListener(Lcom/conecta4g/vpn/PayloadGenerator$OnDismissListener;)V

    .line 1330
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 1331
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1332
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private ShowMsgUpdate()V
    .locals 2

    .line 207
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "App Atualizado com sucesso"

    .line 208
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 209
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "Seu aplicativo foi atualizado.\n\nCaso apresente algum bug limpe os dados do aplicativo.\n\n"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 210
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "Certo"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 211
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelable(Z)V

    .line 212
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$1;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$1;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 219
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->restart_app()V

    return-void
.end method

.method static synthetic access$100(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/conecta4g/vpn/util/ConfigUtil;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->sslEdit:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadEdit:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conecta4g/vpn/SocksHttpMainActivity;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateConfig(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->vp:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->typenetwork:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->checkNetwork()V

    return-void
.end method

.method static synthetic access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/conecta4g/vpn/SocksHttpMainActivity;Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->Vencimento:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->user_limite:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/romzkie/ultrasshservice/config/Settings;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->dias_check:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conecta4g/vpn/SocksHttpMainActivity;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->alertlimiter(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->LimiteNotif()V

    return-void
.end method

.method static synthetic access$2300(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->alertdiasexpirado()V

    return-void
.end method

.method static synthetic access$2400(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->ExpiradoNotif()V

    return-void
.end method

.method static synthetic access$2500(Lcom/conecta4g/vpn/SocksHttpMainActivity;ILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->AvisoexNotif(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/conecta4g/vpn/SocksHttpMainActivity;ILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->alertdias(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->checkUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->isNewVersion(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->newUpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->noUpdateDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->errorUpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doUpdateLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method private alertdias(ILjava/lang/String;)V
    .locals 3

    .line 1584
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "ATEN\u00c7\u00c3O!!"

    .line 1585
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1586
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTAM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PARA O \nTERMINO DA SUA INTERNET\n\nEVITE FICAR SEM INTERNET \nE RENOVE SEU ACESSO"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1587
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string p2, "Certo"

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1588
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance p2, Lcom/conecta4g/vpn/SocksHttpMainActivity$16;

    invoke-direct {p2, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$16;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1594
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method private alertdiasexpirado()V
    .locals 2

    .line 1570
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "ATEN\u00c7\u00c3O!!"

    .line 1571
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1572
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "SUA INTERNET ESTA VENCIDA!\n\nPOR FAVOR, CONTATE SEU \nVENDEDOR PARA RENOVAR SEU ACESSO."

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1573
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "Certo"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1574
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$15;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$15;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1580
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method private alertlimiter(II)V
    .locals 3

    .line 1898
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "ATEN\u00c7\u00c3O!!"

    .line 1899
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1900
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ESSE USUARIO J\u00c1 ESTA\n EM USO NO MOMENTO.\n\nNUNCA COMPARTILHE SEUS\nDADOS DE LOGIN.\n\n CASO ESSE PROBLEMA\nPERSISTA ENTRE EM CONTATO\nCOM SEU VENDEDOR.\n\nLIMITE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1901
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string p2, "Certo"

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1902
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance p2, Lcom/conecta4g/vpn/SocksHttpMainActivity$19;

    invoke-direct {p2, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$19;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1908
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method private antcrash()V
    .locals 2

    .line 1874
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getCheckUser()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$18;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$18;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1893
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private checkNetwork()V
    .locals 4

    const-string v0, "connectivity"

    .line 1397
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 1398
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 1399
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1401
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    const v3, 0x7f10019d

    if-eqz v1, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1406
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1407
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1408
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1410
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIVO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1411
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "claro"

    .line 1412
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLARO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "tim"

    .line 1415
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1416
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-string v1, "oi"

    .line 1418
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1419
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1420
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 1422
    :cond_4
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1423
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 1426
    :cond_5
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "SEM CONEX\u00c3O COM A INTERNET"

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private checkUser()V
    .locals 4

    .line 1772
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    const-string v1, "sshUser"

    const-string v2, ""

    .line 1773
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    .line 1774
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    invoke-direct {v3, p0, v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1870
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createNotification(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 3

    .line 1637
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "SocksHttpMainActivity Notification"

    const/4 v2, 0x4

    invoke-direct {v0, p2, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x1

    .line 1638
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1639
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private doLayout()V
    .locals 7

    const v0, 0x7f0c0023

    .line 227
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setContentView(I)V

    const v0, 0x7f09014b

    .line 229
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    .line 231
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {v1, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->setDrawer(Landroidx/appcompat/widget/Toolbar;)V

    .line 232
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->toolbar_main:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f0900cc

    .line 234
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->status:Landroid/widget/TextView;

    const v0, 0x7f090030

    .line 238
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090029

    .line 239
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->loginLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09003d

    .line 240
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->starterButton:Landroid/widget/Button;

    const v0, 0x7f09002b

    .line 242
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09002a

    .line 243
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09002f

    .line 245
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwShowPass:Landroid/widget/ImageButton;

    const v0, 0x7f090027

    .line 247
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002e

    .line 250
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyInputLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090037

    .line 251
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyText:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v1

    .line 257
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "usarDefaultPayload"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tunnelType"

    const/4 v5, 0x2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    new-instance v1, Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/util/ConfigUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    const v1, 0x7f09010d

    .line 260
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    const v2, 0x7f0900e1

    .line 261
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    .line 263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverList:Ljava/util/ArrayList;

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadList:Ljava/util/ArrayList;

    .line 265
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->udpList:Ljava/util/ArrayList;

    .line 267
    new-instance v5, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    iget-object v6, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v1, v6}, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    .line 268
    new-instance v1, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    iget-object v5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5}, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    const v1, 0x7f0900ed

    .line 269
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->reloadIU:Landroid/widget/ImageView;

    const v1, 0x7f090009

    .line 270
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->Vencimento:Landroid/widget/TextView;

    const v1, 0x7f09006f

    .line 271
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->dias_check:Landroid/widget/TextView;

    const v1, 0x7f0900b5

    .line 272
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->user_limite:Landroid/widget/TextView;

    .line 274
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 275
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 277
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080065

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->loadServer()V

    .line 280
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->loadNetworks()V

    .line 281
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->loadportasudp()V

    const/4 v1, 0x1

    .line 282
    invoke-direct {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateConfig(Z)V

    const v2, 0x7f090035

    .line 292
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->metodoConexaoRadio:Landroid/widget/RadioGroup;

    const v2, 0x7f090028

    .line 293
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->customPayloadSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 295
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->starterButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09002d

    .line 298
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09002c

    .line 299
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadEdit:Lcom/google/android/material/textfield/TextInputEditText;

    const v2, 0x7f09003c

    .line 301
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->ssl_layout:Landroid/widget/LinearLayout;

    const v2, 0x7f09003b

    .line 302
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->sslEdit:Lcom/google/android/material/textfield/TextInputEditText;

    const v2, 0x7f090032

    .line 307
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->configMsgLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f090033

    .line 308
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->configMsgText:Landroid/widget/TextView;

    .line 311
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->customPayloadSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 313
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->metodoConexaoRadio:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 317
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwShowPass:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->reloadIU:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doTabs()V

    .line 322
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setuserpass()V

    return-void
.end method

.method private declared-synchronized doSaveData()V
    .locals 4

    monitor-enter p0

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "USER"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v2}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "PASS"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v2

    .line 638
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 639
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "sshUser"

    .line 640
    iget-object v3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string v3, "sshUser"

    .line 642
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 645
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "sshPass"

    .line 646
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    const-string v1, "sshPass"

    .line 648
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 651
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 653
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method private doUpdateLayout()V
    .locals 8

    .line 574
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 576
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v1

    const-string v2, "tunnelType"

    const/4 v3, 0x1

    .line 577
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 579
    iget-object v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->starterButton:Landroid/widget/Button;

    invoke-virtual {p0, v4, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setStarterButton(Landroid/widget/Button;Landroid/app/Activity;)V

    const v4, 0x7f0f0094

    .line 581
    invoke-virtual {p0, v4}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "protegerConfig"

    const/4 v6, 0x0

    .line 583
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const-string v0, "*******"

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v7, "proxyRemoto"

    invoke-virtual {v0, v7}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    .line 591
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v7, "proxyRemotoPorta"

    invoke-virtual {v0, v7}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "%s:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyInputLayout:Landroid/widget/LinearLayout;

    xor-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    move-object v0, v4

    .line 595
    :goto_0
    iget-object v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq v2, v3, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f09003a

    .line 609
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 610
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    const v0, 0x7f090039

    .line 605
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 606
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const v0, 0x7f090038

    .line 600
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 601
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    :goto_1
    const/16 v0, 0x8

    xor-int/2addr v1, v3

    .line 619
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->loginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->configMsgText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->configMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    :goto_2
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->metodoConexaoRadio:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 625
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->metodoConexaoRadio:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private errorUpdateDialog(Ljava/lang/String;)V
    .locals 1

    .line 942
    new-instance p1, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "Erro na atualiza\u00e7\u00e3o"

    .line 943
    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object p1

    const-string v0, "Ocorreu um erro ao verificar a atualiza\u00e7\u00e3o.\nObserva\u00e7\u00e3o: se o erro persistir, entre em contato com o desenvolvedor para obter mais assist\u00eancia."

    .line 944
    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object p1

    .line 946
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    .line 947
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismiss()V

    return-void
.end method

.method private getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getudp()Ljava/lang/String;
    .locals 2

    .line 823
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 824
    iget v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->contador:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 827
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUdpArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Porta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "7300"

    return-object v0
.end method

.method private isNewVersion(Ljava/lang/String;)Z
    .locals 2

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 897
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 898
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1, p1, v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->versionCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 900
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private loadNetworks()V
    .locals 3

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    .line 861
    :goto_0
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 863
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 867
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private loadServer()V
    .locals 3

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 808
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    .line 810
    :goto_0
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 812
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverAdapter:Lcom/conecta4g/vpn/adapter/SpinnerAdapter;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/adapter/SpinnerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private loadServerData()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "[app_host]"

    .line 678
    :try_start_0
    iget-object v2, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v2

    .line 679
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 681
    iget-object v4, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/conecta4g/vpn/SocksHttpMainActivity$2;

    invoke-direct {v5, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$2;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 695
    iget-object v4, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/conecta4g/vpn/SocksHttpMainActivity$3;

    invoke-direct {v5, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$3;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 710
    iget-object v4, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 711
    iget-object v5, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 713
    iget-object v6, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v6}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ServerIP"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 715
    iget-object v7, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v7}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "ServerPort"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 716
    iget-object v8, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v8}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "SSLPort"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 717
    iget-object v9, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v9}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v9, "CheckUser"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 719
    iget-object v9, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v9}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Payload"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 720
    iget-object v10, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v10}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "SNI"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 721
    iget-object v11, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v11}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TlsIP"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 722
    iget-object v12, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v12}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "ProxyIP"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 723
    iget-object v13, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v13}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "ProxyPort"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 724
    iget-object v14, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v14}, Lcom/conecta4g/vpn/util/ConfigUtil;->getNetworksArray()Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v14, "Info"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 727
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "[app_host_proxy]"

    if-eqz v14, :cond_0

    move-object v11, v6

    goto :goto_0

    .line 729
    :cond_0
    :try_start_1
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    :goto_0
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v10, v6

    goto :goto_1

    .line 735
    :cond_1
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    :goto_1
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v12, v6

    goto :goto_2

    .line 741
    :cond_2
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    const-string v0, "Ssl"

    .line 745
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "sslSNI"

    const-string v15, "usarDefaultPayload"

    const-string v1, "sshPort"

    move-object/from16 v16, v3

    const-string v3, "tunnelType"

    move-object/from16 v17, v4

    const-string v4, "sshServer"

    if-eqz v0, :cond_3

    .line 747
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v18, v11

    const/4 v11, 0x1

    invoke-interface {v0, v15, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v11, 0x3

    invoke-interface {v0, v3, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 750
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 751
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 753
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :cond_3
    move-object/from16 v18, v11

    :goto_3
    const-string v0, "Direct"

    .line 757
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "proxyPayload"

    if-eqz v0, :cond_4

    .line 759
    :try_start_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 762
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 764
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v19, v10

    const/4 v10, 0x1

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_4
    move-object/from16 v19, v10

    :goto_4
    const-string v0, "Proxy"

    .line 767
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    .line 769
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v15, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 770
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v10, 0x2

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 772
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 773
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 775
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v7, "proxyRemoto"

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 776
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v7, "proxyRemotoPorta"

    invoke-interface {v0, v7, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 778
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "Tlsws"

    .line 781
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 783
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v5, v18

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 784
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 786
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 788
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 790
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v10, v19

    invoke-interface {v0, v14, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 792
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 795
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_host"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 797
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url"

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 798
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private loadportasudp()V
    .locals 3

    .line 838
    :try_start_0
    iget v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->contador:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 839
    iput v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->contador:I

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->udpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->udpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 845
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUdpArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUdpArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 847
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->udpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->contador:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->contador:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private newUpdateDialog(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 907
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ReleaseNotes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    new-instance v1, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v2, "BOAS NOTICIAS"

    .line 910
    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 911
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {v1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 912
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "ATUALIZAR"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 913
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "Sair"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 914
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 915
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 931
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method private noUpdateDialog()V
    .locals 2

    .line 934
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "CONECTA4G"

    .line 935
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const-string v1, "Sua configura\u00e7\u00e3o est\u00e1 na vers\u00e3o mais recente"

    .line 936
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    .line 938
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismiss()V

    return-void
.end method

.method private restart_app()V
    .locals 3

    .line 952
    invoke-static {}, Lcom/conecta4g/vpn/SocksHttpApp;->getApp()Lcom/conecta4g/vpn/SocksHttpApp;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 955
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 956
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 957
    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 958
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 959
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method private saveSpinner()V
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 667
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 669
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const-string v3, "LastSelectedServer"

    .line 670
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "LastSelectedPayload"

    .line 671
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setSpinner()V
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    const-string v1, "LastSelectedServer"

    const/4 v2, 0x0

    .line 659
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "LastSelectedPayload"

    .line 660
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 661
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 662
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setupSSH()V
    .locals 5

    const-string v0, "proxyRemotoPorta"

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v1

    .line 330
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tunnelType"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 334
    iget-object v3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 335
    iget-object v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {v4}, Lcom/conecta4g/vpn/util/ConfigUtil;->getServersArray()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ServerPort"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sshPort"

    .line 336
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, ""

    .line 338
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "8080"

    .line 339
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setupSSL()V
    .locals 4

    .line 350
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setupSSH()V

    .line 352
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tunnelType"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sshPort"

    const-string v2, "443"

    .line 356
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateConfig(Z)V
    .locals 2

    .line 872
    new-instance v0, Lcom/conecta4g/vpn/util/ConfigUpdate;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Z)V

    invoke-direct {v0, p0, v1}, Lcom/conecta4g/vpn/util/ConfigUpdate;-><init>(Landroid/content/Context;Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;)V

    .line 891
    invoke-virtual {v0, p1}, Lcom/conecta4g/vpn/util/ConfigUpdate;->start(Z)V

    return-void
.end method

.method public static updateMainViews(Landroid/content/Context;)V
    .locals 2

    .line 1509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MainUpdate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    .line 1511
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public doTabs()V
    .locals 3

    .line 517
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 518
    new-instance v1, Lcom/conecta4g/vpn/adapter/LogsAdapter;

    invoke-direct {v1, v0, p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mLogAdapter:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    const v1, 0x7f0900eb

    .line 519
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->logList:Landroidx/recyclerview/widget/RecyclerView;

    .line 520
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mLogAdapter:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 521
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->logList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 522
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mLogAdapter:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->scrollToLastPosition()V

    const v0, 0x7f09015d

    .line 523
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->vp:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090134

    .line 524
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->tabs:Lcom/google/android/material/tabs/TabLayout;

    .line 525
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->vp:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;

    sget-object v2, Lcom/conecta4g/vpn/SocksHttpMainActivity;->tabTitle:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 526
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->vp:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 527
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->tabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 528
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->tabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 529
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->vp:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1362
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f0033

    .line 1363
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f0f002c

    .line 1364
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f0f007b

    .line 1365
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$11;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$11;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    .line 1366
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f0f008c

    .line 1376
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1377
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$10;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$10;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    .line 1378
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1144
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->edit()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p2

    .line 1146
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const-string v0, "tunnelType"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 1153
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1154
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyInputLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 1148
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1149
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->proxyInputLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1158
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1161
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doUpdateLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090038
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 1097
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1135
    :sswitch_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->restart_app()V

    goto/16 :goto_0

    .line 1099
    :sswitch_1
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getudp()Ljava/lang/String;

    .line 1100
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doSaveData()V

    .line 1101
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->loadServerData()V

    .line 1102
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->saveSpinner()V

    .line 1103
    invoke-virtual {p0, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startOrStopTunnel(Landroid/app/Activity;)V

    goto :goto_0

    .line 1123
    :sswitch_2
    iget-boolean p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->isMostrarSenha:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->isMostrarSenha:Z

    if-eqz p1, :cond_0

    .line 1125
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    .line 1126
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwShowPass:Landroid/widget/ImageButton;

    const v0, 0x7f0800bd

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1129
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    .line 1130
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwShowPass:Landroid/widget/ImageButton;

    const v0, 0x7f0800be

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x0

    const-string v1, "protegerConfig"

    .line 1107
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1108
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doSaveData()V

    .line 1110
    new-instance p1, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;

    invoke-direct {p1}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;-><init>()V

    .line 1111
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "proxyDialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    :sswitch_4
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUrlContato()Ljava/lang/String;

    move-result-object p1

    .line 1117
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 1118
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const p1, 0x7f0f009a

    .line 1119
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090027 -> :sswitch_4
        0x7f09002e -> :sswitch_3
        0x7f09002f -> :sswitch_2
        0x7f09003d -> :sswitch_1
        0x7f0900ed -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1085
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1086
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 140
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 143
    new-instance p1, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-direct {p1, p0, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    .line 144
    new-instance p1, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;

    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->makefat:[Ljava/lang/String;

    invoke-direct {p1, p0, p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->init()V

    .line 145
    new-instance p1, Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-direct {p1, p0}, Lcom/conecta4g/vpn/activities/SMSuPdater;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    .line 148
    new-instance p1, Lcom/conecta4g/vpn/ExceptionHandler;

    invoke-direct {p1, p0}, Lcom/conecta4g/vpn/ExceptionHandler;-><init>(Landroid/app/Activity;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setRequestedOrientation(I)V

    const-string v0, "SocksHttpGERAL"

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "connect_first_time"

    .line 154
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v3, "last_version"

    .line 155
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 161
    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/Settings;->setDefaultConfig(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->showBoasVindas()V

    .line 170
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->getBuildId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->idAtual:I

    if-ge v4, v1, :cond_1

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    iget v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->idAtual:I

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->ShowMsgUpdate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doLayout()V

    .line 195
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "MainUpdate"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.conecta4g.vpn:openLogs"

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mActivityReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 202
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doUpdateLayout()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1279
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1491
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onDestroy()V

    .line 1494
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mActivityReceiver:Landroid/content/BroadcastReceiver;

    .line 1495
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDismiss(Ljava/lang/String;)V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "Payload successfully generated!"

    const/4 v0, 0x0

    .line 1340
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1341
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1285
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1290
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1307
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1309
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1297
    :sswitch_1
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1298
    new-instance v0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-direct {v0}, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;-><init>()V

    .line 1299
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "alertClearConf"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0078

    .line 1301
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1302
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1315
    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 1316
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->finishAffinity()V

    .line 1319
    :cond_2
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 1293
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateConfig(Z)V

    .line 1323
    :goto_0
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005a -> :sswitch_3
        0x7f0900c3 -> :sswitch_2
        0x7f0900c4 -> :sswitch_1
        0x7f0900c8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .line 1478
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onPause()V

    .line 1480
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->doSaveData()V

    .line 1482
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    const/4 v0, 0x0

    .line 1484
    iput-boolean v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->typenetwork:Z

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1078
    invoke-super {p0, p1, p2}, Lcom/conecta4g/vpn/activities/BaseActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1079
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1080
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mDrawerPanel:Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1445
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onResume()V

    .line 1446
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setSpinner()V

    .line 1447
    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->setuserpass()V

    const/4 v0, 0x1

    .line 1448
    iput-boolean v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->typenetwork:Z

    .line 1449
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1450
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1451
    new-instance v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;

    invoke-direct {v2, p0, v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Landroid/os/Handler;Ljava/util/Timer;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xbb8

    .line 1467
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1470
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->addStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public setStarterButton(Landroid/widget/Button;Landroid/app/Activity;)V
    .locals 7

    .line 1002
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLastState()Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v1

    if-eqz p1, :cond_8

    .line 1008
    new-instance v2, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v2, p2}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "validadeConfig"

    .line 1011
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1010
    invoke-static {v3, v4}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->isValidadeExpirou(J)Z

    move-result v3

    const v4, 0x7f0f00be

    const v5, 0x7f0f00db

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    const v4, 0x7f0f007d

    .line 1013
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v1, :cond_7

    .line 1016
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startOrStopTunnel(Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "blockRoot"

    .line 1019
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->isDeviceRooted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v4, 0x7f0f0038

    .line 1022
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0f0073

    .line 1024
    invoke-static {p2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz v1, :cond_7

    .line 1028
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startOrStopTunnel(Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "INICIANDO"

    .line 1031
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v2, 0x7f080064

    if-eqz p2, :cond_2

    .line 1033
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1034
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1035
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1036
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->sslEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1037
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1038
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1039
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1040
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const v4, 0x7f0f00db

    goto/16 :goto_1

    :cond_2
    const-string p2, "CONECTADO"

    .line 1042
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 1044
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1045
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1046
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1047
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1048
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string p2, "PARANDO"

    .line 1050
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const v4, 0x7f0f00d2

    .line 1052
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1053
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const-string p2, "DESCONECTADO"

    .line 1054
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1056
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1057
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->serverSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1058
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1059
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->sslEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1060
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->payloadEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1061
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1062
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1063
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const v4, 0x7f0f00db

    .line 1067
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1070
    :cond_7
    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    :cond_8
    return-void
.end method

.method public setuserpass()V
    .locals 4

    .line 1438
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 1439
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "sshUser"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "sshPass"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showBoasVindas()V
    .locals 2

    .line 1184
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "Aten\u00e7\u00e3o"

    .line 1185
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const-string v1, "O CONECTA4G oferece a seguran\u00e7a online e a confidencialidade que cada um de n\u00f3s merece. A melhor e mais r\u00e1pida VPN desenvolvida por seus usu\u00e1rios, para seus usu\u00e1rios.\n\n\u25ba Internet ilimitada\n\u25ba Acesso e conex\u00e3o ilimitados.\n\u25ba VPN f\u00e1cil de usar, conex\u00e3o de um toque.\n\u25ba Nenhum registro salvo."

    .line 1186
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const-string v1, "Certo"

    .line 1187
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .line 1515
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1516
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0f0033

    .line 1517
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f002c

    .line 1518
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f007b

    .line 1520
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$13;

    invoke-direct {v2, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$13;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f008c

    .line 1531
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$14;

    invoke-direct {v2, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$14;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1545
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public startOrStopTunnel(Landroid/app/Activity;)V
    .locals 4

    .line 966
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerHelper;->stopSocksHttp(Landroid/content/Context;)V

    goto :goto_0

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getudp()Ljava/lang/String;

    move-result-object v0

    .line 971
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 972
    invoke-static {p0, v0}, Lcom/romzkie/ultrasshservice/config/Settings;->setUdpRandom(Landroid/content/Context;Ljava/lang/String;)V

    .line 976
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, p1}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v1

    const-string v2, "inputPassword"

    const/4 v3, 0x0

    .line 979
    invoke-virtual {v1, v2, v3}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 980
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwUser:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->inputPwPass:Lcom/google/android/material/textfield/TextInputEditText;

    .line 981
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const p1, 0x7f0f0079

    .line 982
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 983
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 988
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    .line 989
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getHideLog()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const-string v2, "com.conecta4g.vpn.showNoLogWindow"

    .line 992
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 995
    :cond_3
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 997
    invoke-direct {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->antcrash()V

    :goto_0
    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 0

    .line 1195
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;

    invoke-direct {p3, p0, p4}, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1232
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "CONECTADO"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/conecta4g/vpn/SocksHttpMainActivity$7;

    invoke-direct {p3, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$7;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1242
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "AUTENTICADO"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1244
    :cond_1
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/conecta4g/vpn/SocksHttpMainActivity$8;

    invoke-direct {p2, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$8;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
