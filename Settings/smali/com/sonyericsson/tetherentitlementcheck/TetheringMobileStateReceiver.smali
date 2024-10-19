.class public Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetheringMobileStateReceiver.java"


# static fields
.field private static sShowDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->sShowDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isTetherDunRequired(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_dun_required"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isTethered(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 160
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "tethered":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showInfoDialog(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 166
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 170
    const-string v1, "TetheringMobileStateReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show info dialog w/ data enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const/high16 v2, 0x18800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    const-string v2, "dialog_text"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string v9, "persist.sys.gsmcall"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v4, v7

    .line 55
    .local v4, "gsmCall":Z
    :goto_0
    const-string v9, "TetheringMobileStateReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gsmCall: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->isTethered(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 61
    const-string v8, "TetheringMobileStateReceiver"

    const-string v9, "Not in tethered state"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-boolean v7, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->sShowDialog:Z

    .line 131
    :cond_0
    :goto_1
    return-void

    .end local v4    # "gsmCall":Z
    :cond_1
    move v4, v8

    .line 53
    goto :goto_0

    .line 70
    .restart local v4    # "gsmCall":Z
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->isTetherDunRequired(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 77
    .local v3, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->sShowDialog:Z

    if-eqz v7, :cond_0

    .line 80
    const-string v7, "TetheringMobileStateReceiver"

    const-string v9, "HIPRI Network info is unavailable"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->showInfoDialog(Landroid/content/Context;)V

    .line 83
    sput-boolean v8, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->sShowDialog:Z

    goto :goto_1

    .line 85
    .end local v3    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_3
    const-string v7, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    const-string v7, "dun"

    const-string v9, "apnType"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->isTethered(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 91
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "reason":Ljava/lang/String;
    const-string v7, "TetheringMobileStateReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DATA_CONNECTION_FAILED reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-boolean v7, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->sShowDialog:Z

    if-eqz v7, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->showInfoDialog(Landroid/content/Context;)V

    .line 102
    sput-boolean v8, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->sShowDialog:Z

    goto :goto_1

    .line 107
    .end local v6    # "reason":Ljava/lang/String;
    :cond_4
    const-string v7, "android.net.MobileDataStateTracker.APN_TYPE_NOT_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 110
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 111
    .local v5, "isDefaultNetworkConnected":Z
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "apnType":Ljava/lang/String;
    const-string v7, "TetheringMobileStateReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APN_TYPE_NOT_AVAILABLE, isDefaultNetworkConnected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", apnType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v7, "default"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->isTethered(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetherFailed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringMobileStateReceiver;->showInfoDialog(Landroid/content/Context;)V

    goto/16 :goto_1
.end method
